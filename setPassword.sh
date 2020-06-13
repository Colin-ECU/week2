#!/bin/bash

# This line will ask the user to type a password which is hidden
# The hidden password will be written to a new file named secret.txt
# This file will be located in the folder selected by the user
read -sp "Type your secret password:" password 

echo 

# The hidden password will be stored in a new file secret.txt
# The password will be stored in encrypted SHA256 format
echo $password | sha256sum > secret.txt
echo "You have set your new password"
exit 0
