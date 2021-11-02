#!/bin/bash
numregex="^[0-9]+$";
if [[ -z $1 || "$1" =~ ^[^[0-9]+]$ || $1 -le 0 || $1 -ge 100 ]];
then echo "Error: $1 is an invalid integer between 1 and 99." >&2; exit 1;
fi;
if [ -z $2 ];
then echo "Error: Missing input file for 2nd parameter.";
fi;
# echo $1% of the lines in the input file.
while read line;
do	
	if [ $(($RANDOM % 100)) -le $1 ];
	then echo "$line";
	fi;
done < $2;
exit 0;
