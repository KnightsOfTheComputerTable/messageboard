#!/bin/sh
if [ -e $1 ];
then
	cat $1
else
	echo "Oh noes, the specified file does not exist! Everything was so perfect up until now! :("
fi
