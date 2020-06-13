#!/bin/bash
# This requires the user to type in the name of the folder thay would like to create.
# In this example the script will create the folder in the current directory. 
# To change this they would need to type in the path first starting with ~/
# The -p flag allows the user to add the input on the same line.
 read -p "type the name of the folder you would like to create: " folderName
 mkdir "$folderName"
 exit 0
