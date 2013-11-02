#!/bin/sh
if [ -e $1 ];
then
	echo "Messageboard file exists..."
else
	echo "Incorrect file for write!"
	exit -1;
fi

if [ -e $2 ];
then
	echo "User map does exist!"
	usemap=true
else
	echo "User map does not exist, NNTH"
	usemap=false
fi

read -p "Enter foreground color: " fgcols
read -p "Enter background color: " bgcols

echo "FG: $fgcols, BG: $bgcols"
fgcols=`echo $fgcols | awk '{print tolower($0)}'`
bgcols=`echo $bgcols | awk '{print tolower($0)}'`

case "$fgcols" in
"black")
	fg="\033[30m"
	;;
"red")
	fg="\033[31m"
	;;
"green")
	fg="\033[32m"
	;;
"yellow")
	fg="\033[33m"
	;;
"blue")
	fg="\033[34m"
	;;
"magenta")
	fg="\033[35m"
	;;
"cyan")
	fg="\033[36m"
	;;
"white")
	fg="\033[37m"
	;;
*)
	fg="\033[37m"
	;;
esac

case "$bgcols" in
"black")
	bg="\033[40m"
	;;
"red")
	bg="\033[41m"
	;;
"green")
	bg="\033[42m"
	;;
"yellow")
	bg="\033[43m"
	;;
"blue")
	bg="\033[44m"
	;;
"magenta")
	bg="\033[45m"
	;;
"cyan")
	bg="\033[46m"
	;;
"white")
	bg="\033[47m"
	;;
*)
	bg="\033[47m"
	;;
esac

read -p "Enter the name: " username
read -p "Enter the message: " message

echo "$fg$bg$username\033[0m: \"$message\";" >> $1
