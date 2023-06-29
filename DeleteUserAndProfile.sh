#!/bin/zsh

# Remove old, unnecessary user accounts and profile folders.

# Locate all users on the system
users=$(dscl . -list /Users | grep -v '^_')

echo "What is the username?"
read user

# Remove the user profile
for user in $users; do
# Delete the user account out of the system.
    sysadminctl -deleteUser <username> 

# Delete the user profile folder out of /Users
    sudo rm -rf /Users/<username>
done