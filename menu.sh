#!/bin/bash
# This changes Dir to the location of the PasswordCheck folder
cd ~/scripts/portfolio/

#This runs the passwordCheck script
./passwordCheck.sh 

# If the secret password matches the sha256sum then the 3 options are offered
if [ $? -eq 0 ]; then
    echo Select an option from the below list:
    echo "1. Create a folder" 
    echo "2. Copy a folder" 
    echo "3. Set a password"
    
    #The user is asked to enter an option selection from the list
    read -p "Please type your selection here:  " option

    # Each option will be directed to the relevant script file and run
    # An option other than 1 - 3 will result in and Incorrect option error
    case $option in

    1)  ~/scripts/portfolio/foldermaker.sh
    ;;
    2)  ~/scripts/portfolio/foldercopier.sh
    ;;
    3)  ~/scripts/portfolio/setPassword.sh
    ;;
    *)  echo "Incorrect option"

    esac

else
    #If user password entered is not correct the Access Denied error will be displayed
    echo 
    exit 1

fi
