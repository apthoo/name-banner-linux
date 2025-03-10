#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install figlet if not installed
if ! command_exists figlet; then
    echo "figlet is not installed. Installing figlet..."
    if command_exists apt; then
        sudo apt update -y && sudo apt upgrade -y
        sudo apt install -y figlet
    elif command_exists brew; then
        brew install -y figlet
    elif command_exists yum; then
        sudo yum update -y && sudo yum upgrade -y
        sudo yum install -y epel-release
        sudo yum install -y figlet
    else
        echo "Unsupported package manager. Please install figlet manually."
        exit 1
    fi
fi

# Install lolcat if not installed
if ! command_exists lolcat; then
    echo "lolcat is not installed. Installing lolcat..."
    if command_exists apt; then
        sudo apt update -y && sudo apt update -y
        sudo apt install -y lolcat
    elif command_exists brew; then
        brew install -y lolcat
    elif command_exists yum; then
        sudo yum update -y && sudo yum upgrade -y
        sudo yum install -y ruby
        sudo gem install lolcat 
    else
        echo "Unsupported package manager. Please install lolcat manually."
        exit 1
    fi
fi

# Main script
echo "You are going to see your name in the terminal."
echo "Enter Your Name: "
read -r name
figlet -f slant "$name" | lolcat
