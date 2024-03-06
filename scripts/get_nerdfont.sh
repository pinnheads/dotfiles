#!/bin/bash

# Define the url and target directory
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip"
DIR="$HOME/dotfiles/.fonts"

# Check if curl is installed or not
if ! command -v curl &> /dev/null
then
	echo "curl not found"
	exit
fi

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Download the file to the target directory
curl -L "$URL" -o "$DIR/JetBrainsMono.zip"

# Unzip the file
unzip "$DIR/JetBrainsMono.zip" -d "$DIR"

# run fc-cache -v
fc-cache -v

