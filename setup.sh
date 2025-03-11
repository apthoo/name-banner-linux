#!/bin/bash

# Get the directory of the script
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Make scripts executable
chmod u+x "$REPO_DIR/welcome.sh"
chmod u+x "$REPO_DIR/setup.sh"

# Add welcome.sh to .bashrc or .bash_profile
if [ -f ~/.bash_profile ]; then
    echo "Adding welcome.sh to ~/.bash_profile"
    echo "$REPO_DIR/welcome.sh" >> ~/.bash_profile
elif [ -f ~/.bashrc ]; then
    echo "Adding welcome.sh to ~/.bashrc"
    echo "$REPO_DIR/welcome.sh" >> ~/.bashrc
else
    echo "Could not find ~/.bash_profile or ~/.bashrc. Please add the following line manually to your shell configuration file:"
    echo "$REPO_DIR/welcome.sh"
fi

echo "Setup complete! Please restart your terminal to see the changes."







echo "Setup complete! Please restart your terminal to see the changes."
echo -e "\e[31m"

echo "                         +=================+
                         |+-+-+-+-+-+-+-+-+|
        Team: >>>>       ||P|y|t|h|o|m|a|s||
                         |+-+-+-+-+-+-+-+-+|
                         +=================+                                                          
                  "


# Prompt the user for input
read -p "Do you want to reboot the system? (yes/y or no/n): " user

# Convert input to lowercase
user=$(echo "$user" | tr '[:upper:]' '[:lower:]')

# Check the user's input
if [[ "$user" == "yes" || "$user" == "y" ]]; then
    echo "Rebooting the system..."
    sudo reboot
# elif [[ "$user" == "no" || "$user" == "n" ]]; then
else echo "No action taken. Exiting..."
    exit
fi
                      
