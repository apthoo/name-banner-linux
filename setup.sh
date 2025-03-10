#!/bin/bash

# Make welcome.sh executable
chmod +x welcome.sh

# Add welcome.sh to .bash_profile or .bashrc
if [ -f ~/.bash_profile ]; then
    echo "Adding welcome.sh to ~/.bash_profile"
    echo "~/path/to/your-repo/welcome.sh" >> ~/.bash_profile
elif [ -f ~/.bashrc ]; then
    echo "Adding welcome.sh to ~/.bashrc"
    echo "~/path/to/your-repo/welcome.sh" >> ~/.bashrc
else
    echo "Could not find ~/.bash_profile or ~/.bashrc. Please add the following line manually to your shell configuration file:"
    echo "~/path/to/your-repo/welcome.sh"
fi

echo "Setup complete! Please restart your terminal to see the changes."
echo -e "\e[31m"

echo "                         +=================+
                         |+-+-+-+-+-+-+-+-+|
        Team: >>>>       ||P|y|t|h|o|m|a|s||
                         |+-+-+-+-+-+-+-+-+|
                         +=================+                                                          
                  "

                      "
