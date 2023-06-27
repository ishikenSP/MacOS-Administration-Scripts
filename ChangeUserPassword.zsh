#!/bin/zsh

###########################################
########## Change User Password ###########
##########  By Kendall Cabrera  ###########
##########   Valid: 2023-06-27  ###########

# Get a list of user accounts
users=$(dscl . -list /Users | grep -v '^_')

echo "What is the username?"
read user

# Loop through each user account and reset the password
for user in $users; do
    # Generate a random password
    temppassword=$(openssl rand -base64 12)

    # Set the user account password to the temporary password
    dscl . -passwd /Users/"$user" "$temppassword"

    # Print the username and temporary password
    echo "User: $user, Temporary Password: $temppassword"
done