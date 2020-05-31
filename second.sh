#!/bin/bash
#In this simple script the echo command prints the text onto the screen
#The $1 provides the identification of this as argument #1
echo "Hi there!"
echo "It's good to see you $1!" 
exit 0
#A value, my name, can be provided to the #1 argument when the script is executed (after chmod +x)
# ./second.sh Colin    this name is printed after the $1 line.