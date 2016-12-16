#!/bin/sh

# The MYBASEDIR variable is set to point to the directory 
# holding the various executables.  It must also have a 
# directory that holds the backups.  make it with mkdir backups

# this script MUST be run from the directory holding 
# the .tex file and its log file

MYBASEDIR=./Question_Format_Programs

if [ "x$1" = "x" ]
then
echo You should specify a file name
else
cp $1 $MYBASEDIR/backups
$MYBASEDIR/Merger $1 /tmp/foo.out
$MYBASEDIR/KillDups /tmp/foo.out /tmp/foo2.out
$MYBASEDIR/BraceKiller /tmp/foo2.out $1

# clean up
rm /tmp/foo.out
rm /tmp/foo2.out
fi


