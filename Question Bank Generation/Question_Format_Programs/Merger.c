/****************************************************
Copyright 2016 Dana Nowell, all rights reserved.
This is a hack.  Written for my son, Jason Nowell 
in August 2016.

LOTS of assumptions in the code about other parts of the code.
Beware of modifications cascading through the code.  
This was a 4-5 hour hack against verbal requirements 
and should be assumed as such.
****************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAX_SAGE_LINES	70000
#define BUFSIZE	10000

typedef struct _LogLine {
struct _LogLine *next;
char *Line;
} LogLine;

typedef enum { FALSE = 0, TRUE } BOOL;
BOOL TraceOn = FALSE;
char buffer[BUFSIZE+1];  /* add 1 for end of string marker */
LogLine *SageLine[MAX_SAGE_LINES];
int NextEmptySageLine;
int NextSageLineOutput;


/*************************************
*************************************/
ErrorExit( char *p)
{

if ( p != NULL )
  fputs( p, stderr );
 
exit(1); 
}  


/*************************************
*************************************/
char *TrimLeadingWhitespace( char *p )
{
if ( p == NULL || *p == 0)
	return p;

while ( strchr( "\r\n\t ", *p ) != NULL && *p != 0 )	
	{
	++p;
	}
	
return p;	
}


/*************************************
*************************************/
void TrimTrailingWhitespace( char *p )
{
char *q;

if ( p == NULL || *p == 0)
	return;

q = p + strlen(p) - 1;
while ( strchr( "\r\n\t ", *q ) != NULL )
	{
	*q = 0;
	--q;
	if ( q < p )
		break;
	}
	
}


/*************************************
*************************************/
char *TrimWhitespace( char *p )
{
TrimTrailingWhitespace( p );
return TrimLeadingWhitespace( p );
}



/*************************************
*************************************/
void DoTrace( char *p )
{
if ( TraceOn != 0 && p != NULL )
	fprintf( stderr, "%s\n", p );
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
void FreeMemoryBlock( char *p )
{

if ( p == NULL )
	ErrorExit( "Attempt to free NULL pointer" );

free(p);
}




/*************************************
returns:
  0 - success
  1 - end of file
  2 - line too long
*************************************/
int ReadLine( FILE *fh )
{
char *p;
int len;

p = fgets( buffer, BUFSIZE, fh );
if ( p == NULL )
	return 1;
	
len = strlen( buffer );
if ( strlen(p) >=BUFSIZE && buffer[len-1] != '\r' && buffer[len-1] != '\n'  )  /* no end of line implies buffer too short */
	return 2;

return 0;	
}


/*************************************
*************************************/
LogLine *BuildLogLine( char *p )
{
LogLine *Line;
int len;

Line = (LogLine *) GetMemoryBlock( sizeof( LogLine ));
len = strlen( p );
Line->Line = GetMemoryBlock(  len + 1 );
strcpy( Line->Line, p );
Line->next = NULL;

return Line;
}


/*************************************

There is magic here or at least messy hard to read stuff 
goal is to discard matched empty braces 
e.g, {{5}{}{}} becomes {{5}}
*************************************/
void RemoveUselessBraces( char *OldBuf )
{
char *p, *q, *n, *NewBuf;

p = OldBuf;
NewBuf = GetMemoryBlock(strlen(p) + 1 ); /* get a temp buffer big enough for the string plus the string terminator */
q = NewBuf;

/* walk the source string copying to the destination string while avoiding the matched empty braces */
while( *p )
{
n = p;
++n; /* next character */
if ( *p == '{' && *n == '}' )  /* pair of matched braces */
	{  /* move p to character after the matched close brace, basically skip over them */
	++p;
	++p;
	}
else
	{
	*q = *p;  /* copy the non matched brace char */
	++q;  /* move to next spot in destination buffer */
	++p;  /* advance in the source buffer */
	}
}

*q = 0;  /* ensure NULL terminated string so we have a end of string mark */	
*OldBuf = 0; /* erase old string, in case the new string is empty */
if( strlen(NewBuf) > 0 ) /* copy new string into old string location if new sting exists */
	strcpy(OldBuf, NewBuf);
	
FreeMemoryBlock( NewBuf ); /* clean up our temp buffer */
}



/*************************************
*************************************/
char *FindComment( char *line )
{
char *p;

if ( line == NULL || *line == 0 )
	return NULL;

if ( *line == '%') /* this avoids walking off the front of the string during a check later/below */
	return line;
		
p = strstr( line, "%" ); /* position of first comment character in the string */
if ( p == NULL ) /* line has no embedded comments */
	return NULL;

if ( *(p-1) == '\\' ) /* Not a real commment, it is escaped */
	p = FindComment( p+1);

return p;	
}




/*************************************
*************************************/
char *TrimLogLine( char *OldBuf )
{
char *p, *q;

p = OldBuf;
TrimTrailingWhitespace(p);

/* club any comments like a baby seal */
q = FindComment( p );
if ( q != NULL )
	*q = 0;

	/* if we have a line, remove useless braces  */
if ( strlen(p) != 0 )
	RemoveUselessBraces( p );
	
return p;	
}



/*************************************
*************************************/
void ProcessLogFile( FILE *Log )
{
typedef enum { INITIAL, PROCESSING } StateType;
int Stat;
char *p;
char *MyLine;
StateType State = INITIAL;
LogLine *Current;
int LineNo = 0;

/* loop while we get data from the file */
while( (Stat = ReadLine( Log )) == 0 )
{
++LineNo;

/* skip comments and empty lines - a comment begins with a percent */
MyLine = TrimLogLine(buffer);	
if ( strlen(MyLine) < 1 )
	continue;
	
p = strstr( MyLine, "@sageinline" );
if ( p != NULL )
	{  /* at this point we have a new definition */
	   /*  walk past the sageinline header to the real data */
	while ( *p != 0 && *p != '{' )
		++p;
	if ( *p == 0 )
		ErrorExit("ProcessLogFile: there should be data here!" );
		
	Current = BuildLogLine( p );
	State = PROCESSING;
	SageLine[NextEmptySageLine] = Current;
    if ( ++NextEmptySageLine >= MAX_SAGE_LINES )
		ErrorExit( "ProcessLogFile: Too Many log lines" );
	}
else
	{ /* at this point it is either a continuation of the previous LogLine or an initial comment line */
	if ( State == PROCESSING )
		{
		Current->next = BuildLogLine( MyLine );
		Current = Current->next;
		}
	}
		
}

if ( Stat == 2 )
	printf( "Line too long in the Log File near line %d\n", LineNo );
}



/*************************************
*************************************/
void PrintSageLine( int Which, FILE *Out) 
{
LogLine *Current;

if ( Which >= NextEmptySageLine)
	ErrorExit( "Trying to print a sage substitution that does not exist" );
	
for ( Current = SageLine[Which]; Current != NULL; Current = Current->next )
	{
	fprintf( Out, "%s", Current->Line );
	}

}

	
/*************************************
*************************************/
void ProcessSageLine (char *line, FILE *OutFile )
{
int count;
char *p;
char *comment;

if ( line == NULL || *line == 0 ) /*  recursed to the end of line */
	return;
	 
if ( *line == '%' ) /* line is a comment */
	{
	fputs( line, OutFile );
	return;
	}

comment = FindComment( line ); /* locate the start of any comment, we do not want to substitue inside a comment */

p = strstr( line, "\\sage{" ); /* find the first sage block */
if ( p == NULL ) /* line has no embedded sage commands */
	{
	fputs( line, OutFile );
	return;
	}

if ( comment != NULL && p > comment ) /* sage block is in the comment, we are done with this line */
	{
	fputs( line, OutFile );
	return;
	}

	
	
*p = 0; /* terminate the string at the start of the sage block */
fputs( line, OutFile ); /* write out the first part of the line */
PrintSageLine( NextSageLineOutput, OutFile );  /* Write out the sage data */
++NextSageLineOutput; /* Tee up the next one */

for ( ++p; *p != '{' && *p != 0; p++ ); /* spin to the { in the \sage{ */
if ( *p != 0 )
		++p; /* skip the open brace */
//fprintf( OutFile, "ProcessSageLine - Debug2:%s", p );
	
for ( count = 1; count != 0 && *p != 0; p++) /* the one in \sage{ is the start point */
	{
	if ( *p == '{' )
		++count;
	else
		if ( *p == '}' )
			--count;
	}

	/* at this point we are either at the end of the line or just after the ending brace of the sage construct */
if ( *p != 0 ) /* not end of line */
	{
	ProcessSageLine( p, OutFile ); /* recurse to process the remainder of the line */
	}
}


	
/*************************************
*************************************/
void ProcessInputFile (FILE *InFile, FILE *OutFile )
{
typedef enum { DATA, SILENT } StateType;
int Stat;
int LineNo = 0;
StateType State = DATA;


while( (Stat = ReadLine( InFile )) == 0 )
{
++LineNo;
if ( State == SILENT )
	{
	if ( strstr( buffer, "\\end{sagesilent}" ) != NULL )
		State = DATA;
	}
else
	if ( strstr( buffer, "\\begin{sagesilent}" ) != NULL )
		State = SILENT;
	else
		ProcessSageLine( buffer, OutFile );
}

if ( Stat == 2 )
	printf( "Line too long in tex file near line %d\n", LineNo );

}


/*************************************
*************************************/
void main (int argc, char *argv[] )
{

char InputFileName[100];
char LogFileName[100];
char OutputFileName[100];
char *p;
FILE *Input, *Log, *Out;


if ( argc < 2 )
	ErrorExit( "Needs arguments: Inputfile name and optional output file name" );
	
strcpy( InputFileName, argv[1] );
strcpy( LogFileName, argv[1] );

p = strstr( LogFileName, ".tex" );
if ( p == NULL )
	ErrorExit( "Need a .tex file" );
*p = 0;
strcpy( OutputFileName, LogFileName );
strcat( LogFileName, ".sagetex.sout" );
strcat( OutputFileName, ".merge.tex" );
if ( argc > 2 )
	strcpy( OutputFileName, argv[2] );
	
printf( "Input file is: %s\n", InputFileName );
printf( "Log File is: %s\n", LogFileName );
printf( "Output file is: %s\n", OutputFileName );
puts( " " );  /* blank line */
	
Input = fopen( InputFileName, "r" );
if ( Input == NULL )
	ErrorExit( "Failed to open input file" );
Log = fopen( LogFileName, "r" );
if ( Log == NULL )
	ErrorExit( "Failed to open Log file" );
Out = fopen( OutputFileName, "w+");
if ( Out == NULL )
	ErrorExit( "Failed to open output file" );

ProcessLogFile( Log );
fclose( Log );

printf( "Log File Processed: %d entries\n", NextEmptySageLine );

ProcessInputFile( Input, Out );

puts( "Input File Processed\n" );

fclose( Input );
fclose( Out );


if ( NextEmptySageLine != NextSageLineOutput )
	printf( "Sage log entries count mismatch, log entries: %d, entries used %d\n", NextEmptySageLine, NextSageLineOutput );
	
}

