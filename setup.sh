#!/bin/bash


# Terminate execution if not running with root priviliges
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run with sudo or as root"
    exit 1
fi

apt update

apt install sudo -y
apt install ansible -y

ansible --version

# Add user to sudoers

# Print current users in the sudo group
echo "Current users in the sudo group:"
getent group sudo | cut -d: -f4

# Prompt for username
read -p "Enter the username to add to the sudo group: " username

# Check if the user exists
if id "$username" &>/dev/null; then
    # Check if the user is already in the sudo group
    if groups "$username" | grep -q '\bsudo\b'; then
        echo "User $username is already a member of the sudo group."
    else
        # Add the user to the sudo group
        sudo usermod -aG sudo "$username"
        echo "User $username has been added to the sudo group."
        echo "Group membership changes might require the user to log out and log back in for the changes to take effect."

    fi
else
    echo "User $username does not exist."
fi
read -p "Press Enter to continue..."

ansible-playbook playbook.yml
