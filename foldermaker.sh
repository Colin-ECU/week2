#!/bin/bash
# This requires the user to type in the name of the folder thay would like to create.
#In this example it will create the folder in the directory in which the curser is current at. 
# to change this they would need to type in the path first starting with ~/
 read -p "type the name of the folder you would like to create: " folderName
 mkdir "$folderName"
 exit 0
