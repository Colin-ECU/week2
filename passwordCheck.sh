#!/bin/bash

#Colours to be applied to mathmatic functions
RED="\e[31m"
GREEN="\e[32m"
NORMAL="\e[97m"

#Ask user to type a secret password (hide password)
echo -e ${RED} 
read -sp "Please type your secret password here:  " password
echo -e ${NORMAL}

#The user password is then checked against the SHA256 stored in file secret.txt with output supressed to OK or not OK
#This sha256sum encrypted password and secret.txt file are created by the setPassword.sh script
echo $password | sha256sum -c --status secret.txt 

#The output (OK=0) is linked to the if statement below (this step may not be required to minimise the script by replacing the if statement $OK with "$?")
#and removing the below step.
#OK="$?"

#If the exit status of the last command is OK (0) then the first echo condition applies, if not the second condition applies
if [ "$?" -eq 0 ]; then  
    #If the user password is correct
    echo -e ${GREEN} Access Granted
    exit 0


else
    #If user password is not correct
    echo -e ${RED} Access Denied
    exit 1
fi	
