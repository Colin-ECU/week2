#!/bin/bash
# The main error on this exercise was the missing read command to commence the script.
# Prompting user to enter a secret code.
read -s -p "Type your secret in here..if you remember?: " option
 
 # Secret=shhh, Don't tell anyone!
 # If the user types in the correct secret, tell them they got it right!
 if [ "$option" = "shhh" ]; then
     echo "You got it right!"
     correct=true

 else     echo "You got it wrong :("
        correct=false
 fi
 
 case $correct in
 false)
     echo "Go Away!" # People who get it wrong need to be told to go away!
     ;;
 true)
     echo "you have unlocked the secret menu!"
     # TODO: add a secret menu for people in the know.
     ;;
 esac
