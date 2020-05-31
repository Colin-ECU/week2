#!/bin/bash
#This read copmmand prompts the user to neter a folder name
 read -p "type the name of the folder you would like to copy: " folderName
 
 #if the name is a valid directory
 if [ -d "$folderName" ]; then

     #Read prompts the user to create a new destionation folder to send the copy
     read -p "type the name of the destination folder: " newFolderName
     cp -r "$folderName" "$newFolderName"

 else
     #If the folder requested is not a valid folder the error is produced
     echo "I couldn't find that folder"

 fi
