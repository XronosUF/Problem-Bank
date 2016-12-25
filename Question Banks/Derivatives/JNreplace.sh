#!/bin/sh
if [ "x" == "$3x" ]
then
echo requires three arguments e.g.: $0 file name, originalstring newstring
else
ex -c "%s/$2/$3/g" -c "x" $1
fi 

