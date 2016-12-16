/****************************************************
Copyright 2016 Dana Nowell, all rights reserved.
This is a hack.  Written for my son, Jason Nowell 
in August 2016.

LOTS of assumptions in the code about other parts of the code.
Beware of modifications cascading through the code.  
This was a 4-5 hour hack against verbal requirements 
and should be assumed as such.
*
* main purpose is to remove redundant content from a file
****************************************************/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BUFSIZE	10000
#define MAXCONTENT 50000
#define FALSE	0
#define TRUE	1

int debug = 0; /*set to non zero to get tracing output */
char buffer[BUFSIZE+1];

int LineCount;
int ProcessingContent;
int CurrentParenCount;
int ContentBlocksDiscarded;
char SearchString[200] = "\\latexProblemContent{";

typedef struct _SaveContent
	{
	char *content;
	struct _SaveContent *next;
	} SaveContent;

SaveContent *head;
SaveContent *CurrentContent;

/*************************************
*************************************/
void ErrorExit( char *p)
{

if ( p != NULL )
  fputs( p, stderr );

fputs( "\n\n", stderr );
 
exit(1); 
}  


/*************************************
*************************************/
void *GetMemoryBlock( int size )
{
void *p;

p = malloc( size );

if ( p == NULL )
	ErrorExit( "Failed to allocate memory" );

/* lots of assumptions in code (like end of string) that block is all zeros */	
memset( p, 0, size );	

return p;

}


/*************************************
*************************************/
void FreeMemoryBlock( void *p )
{

if ( p == NULL )
	ErrorExit( "Attempt to free NULL pointer" );

free(p);
}


/*************************************
*************************************/
void LinkContent( SaveContent *ptr )
{
char *p;

if ( debug )
	printf( "LinkContent: Linking %d bytes\n", strlen(ptr->content) );


/* first shorten buffer to what we actually need */
p = ptr->content;
ptr->content = GetMemoryBlock( strlen(p) + 1 );
strcpy( ptr->content, p );

FreeMemoryBlock( p );

if ( debug )
	printf( "LinkContent: Linking %d bytes\n", strlen(ptr->content) );


if ( head == NULL )
	head = ptr;
else
	{
	ptr->next = head;
	head = ptr;
	}
		
}


/*************************************
*************************************/
int FindCurrentContent( void )
{
SaveContent *p;
int retval = FALSE;

if ( CurrentContent == NULL )
	ErrorExit( "In FindCurrentContent() with no content block" );
if ( CurrentContent->content == NULL )
	ErrorExit( "In FindCurrentContent() with no content" );
	
for ( p = head; p != NULL; p= p->next )
	{
	if ( strcmp( p->content, CurrentContent->content ) == 0 )
		{
		retval = TRUE;
		break;
		}
	}
return retval;
}



/*************************************
*************************************/
void ContentDone( FILE *out, char *remainder )
{
if ( CurrentContent == NULL )
	ErrorExit( "In ContentDone() with no content block" );


if ( CurrentContent->content != NULL )
	{
	if ( debug )
		puts( "ContentDone: Live content" );

	if ( !FindCurrentContent() )
		{
		fputs( SearchString, out );		
		fputs( "\n", out );
		fputs( CurrentContent->content, out );
		fputs( "}", out );
		if ( remainder != NULL )
			fputs( remainder, out );
		fputs( "\n", out );
		LinkContent( CurrentContent );
		}
	else	
		{
		FreeMemoryBlock( CurrentContent->content );
		++ContentBlocksDiscarded;
		}
		
	}
else
	FreeMemoryBlock( CurrentContent );
	
CurrentContent = NULL;
ProcessingContent = FALSE;
return;
}




/*************************************
*  Handle a line with potential matching braces
*************************************/
int HandleContentLine( char *line, FILE *out )
{
int retval = 0;
char *p, *q;
int FoundOne = FALSE;
int len;

if ( debug )
	printf( "HandleContentLine: Entered\n" );


for ( p = line; *p != 0 && *p != '%' && !FoundOne; q = p, p++ )
	{
	switch( *p )
		{
		case '{':
			if ( q != NULL && *q == '\\' )
				{
				if ( debug )
					printf( "Line %d found open brace we should not count", LineCount );
				}
			else
				++CurrentParenCount;
				
			len = strlen(CurrentContent->content);
			CurrentContent->content[len] = *p;
			CurrentContent->content[len+1] = 0;
			

			break;
		case '}':
			
			if ( q != NULL && *q == '\\' )
				{
				if ( debug )
					printf( "Line %d found close brace we should not count", LineCount );
				}
			else
				--CurrentParenCount;
				
			if ( CurrentParenCount < 0 )
				{
				ContentDone( out, p+1 );
				FoundOne = TRUE; 
				if ( debug )
					printf( "Line %d setting FoundOne\n", LineCount );

				}
			else
				{
				len = strlen(CurrentContent->content);
				CurrentContent->content[len] = *p;
				CurrentContent->content[len+1] = 0;
				}
				
			break;
			
		default:
			len = strlen(CurrentContent->content);
			CurrentContent->content[len] = *p;
			CurrentContent->content[len+1] = 0;
			break;
		}
	}

if ( debug && CurrentContent != NULL && CurrentContent->content != NULL )
	{
	len = strlen(CurrentContent->content);
	printf( "HandleContentLine: content is %d long\n", len );
	}
	
if ( FoundOne )
	{
	if ( debug )
		printf( "Line %d is considered Content end\n", LineCount );
	}
else	
	if ( *p == '%' )
		strcat( CurrentContent->content, p );

return retval;
}




/*************************************
*  Handle everyline
*************************************/
int HandleLine( char *line, FILE *out )
{
int retval = 0;

if ( debug )
	printf( "HandleLine: Line %s\n", line );

			
if ( strstr( line, SearchString ) != 0 )
	{
	if ( ProcessingContent != 0 )
		ContentDone( out, NULL );
	ProcessingContent = TRUE;	
	CurrentParenCount = 0;
	CurrentContent = GetMemoryBlock( sizeof( SaveContent ) );
	CurrentContent->content = GetMemoryBlock( MAXCONTENT + 1 );
	if ( debug )
		printf( "Line %d is considered Content start\n", LineCount );
	}
else
	if ( ProcessingContent != 0 )
		retval = HandleContentLine( line, out );
	else
		{
		if ( debug )
			printf( "Line %d is not considered content\n", LineCount );
		fputs( line, out );
		}

	

return retval;	
}


/*************************************
*  Main routine
*************************************/
int main( int argc, char *argv[] )
{
char InputFileName[100];
char OutputFileName[100];
char *p;
FILE *Input, *Out;
int done = 0;


if ( argc < 2 )
	ErrorExit( "Needs arguments: Inputfile name and optional output file name, adds .out to input name if output name not specified" );
	
strcpy( InputFileName, argv[1] );

if ( argc > 2 )
	strcpy( OutputFileName, argv[2] );
else
	{
	strcpy( OutputFileName, argv[1] );
	strcat( OutputFileName, ".out" );
	}

Input = fopen( InputFileName, "r" );
if ( Input == NULL )
	ErrorExit( "Failed to open input file" );
Out = fopen( OutputFileName, "w+");
if ( Out == NULL )
	ErrorExit( "Failed to open output file" );
	
while ( !done )
	{
	fflush( NULL );
	p = fgets( buffer, BUFSIZE, Input );
	if ( p == NULL )
		done = TRUE;
	else
		{
		++LineCount;
		if ( debug )
			printf( "Processing Line %d\n", LineCount );
		if ( HandleLine( buffer, Out ) != 0 )
			ErrorExit( "Handle Line blew up" );
		}
	}

	
fclose ( Input );
fclose ( Out );

printf( "\n\nProcessed %d lines, Discarded %d Content Blocks\n\n\n", LineCount, ContentBlocksDiscarded );

return 0;
}