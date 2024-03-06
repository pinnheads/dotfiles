#!/bin/bash

# Define the url and target directory
URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip"
DIR="$HOME/dotfiles/.fonts"

# Create the directory if it doesn't exist
mkdir -p "$DIR"

# Check if curl is installed or not
if ! command -v curl &> /dev/null
then
	echo "curl not found!! Install with apt install curl"
	exit
fi

# Download the file to the target directory
curl -L "$URL" -o "$DIR/JetBrainsMono.zip"

# Check if curl is installed or not
if ! command -v unzip &> /dev/null
then
	echo "unzip not found!! Install with apt install unzip"
	exit
fi

# Unzip the file
unzip "$DIR/JetBrainsMono.zip" -d "$DIR"

# Check if curl is installed or not
if ! command -v fc-cache &> /dev/null
then
	echo "fontconfig not found!! Install with apt install fontconfig"
	exit
fi

# run fc-cache -v
fc-cache -v

