#!/bin/bash

# Make scripts executable
sudo chmod u+x welcome.sh
sudo chmod u+x setup.sh

# Run the setup 1
./welcome.sh

# Run the setup script
./setup.sh



echo -e "\e[31m"

echo "                         +=================+
                         |+-+-+-+-+-+-+-+-+|
        Team: >>>>       ||P|y|t|h|o|m|a|s||
                         |+-+-+-+-+-+-+-+-+|
                         +=================+                                                          
                  "



echo "Setup complete! Please restart your terminal to see the changes."
# Prompt the user for input
read -p "Do you want to reboot the system? (yes/y or no/n): " user

# Convert input to lowercase
user=$(echo "$user" | tr '[:upper:]' '[:lower:]')

# Check the user's input
if [[ "$user" == "yes" || "$user" == "y" ]]; then
    echo "Rebooting the system..."
    sudo reboot
elif [[ "$user" == "no" || "$user" == "n" ]]; then
    echo "No action taken. Exiting..."
    exit
else
    echo "Invalid input. Please enter 'yes/y' to reboot or 'no/n' to exit."
    exit 1
fi
