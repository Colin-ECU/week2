#!/bin/bash
# This changes Dir to the location of the passwordCheck folder.
cd ~/scripts/portfolio/week2

# This runs the passwordCheck script.
./passwordCheck.sh 

# If the secret password matches the sha256sum (exit code is 0) then the 3 below options are offered.
# If the match is True (0) then the folder options are displayed.
if [ $? -eq 0 ]; then
    echo " Please select an option from the below list:"
    echo " 1. Create a folder" 
    echo " 2. Copy a folder" 
    echo " 3. Set a password"
    
    # The user is prompted to enter an option selection from the list above.
    read -p "Please type your selection here:  " option

    # Each option will be directed to the relevant script file and run.
    # An option other than 1 - 3 will result in and Incorrect option error.
    case $option in

    1)  ~/scripts/portfolio/week2/foldermaker.sh
    ;;
    2)  ~/scripts/portfolio/week2/foldercopier.sh
    ;;
    3)  ~/scripts/portfolio/week2/setPassword.sh
    ;;
    *)  echo "Incorrect option"

    esac

else
    # If user password entered is not correct the Access Denied error will be displayed
    # The Access Denied response is generated from the passwordChech.sh
    echo 
    exit 1

fi
