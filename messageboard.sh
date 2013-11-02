#!/bin/bash
file="./db/messageboard.txt"
colordb="./db/usermaps.txt"
while [ 1 ]
do
clear
echo "MessageBoard Shell Script, by four04"
echo "Options:"
echo "[D]isplay the message board"
echo "[A]dd a message to the message board"
echo "[Q]uit"
echo "Dele[T]e the message board (please don't)"
echo "[Ctrl+C to quit]"
read -n 1 -p "Enter your choice: " choice
choice=`echo "$choice"|awk '{print tolower($0)}'`
case "$choice" in
"q")
	echo -e -n "\n"
	exit 0;
	;;
"d")
	echo -e -n "\n"
	src/display_message_board.sh $file
	read -n 1 -p "Press any key to continue..."
	;;
"a")
	echo -e -n "\n"
	src/add_message_to_message_board.sh $file $colordb
	read -n 1 -p "Press any key to continue..."
	;;
"t")
	echo -e -n "\n"
	rm $file
	read -n 1 -p "Press any key to continue..."
	;;
*)
	;;
esac
done
