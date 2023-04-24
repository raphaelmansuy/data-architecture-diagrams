#!/usr/bin/env bash

# Download the Virgil font from Github
wget https://github.com/excalidraw/virgil/archive/refs/heads/main.zip -O virgil.zip
unzip virgil.zip

# Move the Virgil font files to the system's font directory
sudo mv virgil-main/*.ttf /usr/share/fonts/truetype/

# Refresh the font cache
sudo fc-cache -fv

# Clean up downloaded files
rm -rf virgil.zip virgil-main
