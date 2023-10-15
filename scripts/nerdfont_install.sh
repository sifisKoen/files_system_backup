#!/bin/sh

cd /tmp || or exit

# List the nerd fonts as a space-separated string
fonts="CascadiaCode FiraCode Go-Mono Hack Inconsolata Iosevka JetBrainsMono Mononoki RobotoMono SourceCodePro UbuntuMono"

# Iterate over the font names
for font in $fonts; do
    # Download the font zip file
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
    
    # Create a directory for the font within /usr/share/fonts/
    mkdir -p /usr/share/fonts/$font
    
    # Unzip the font directly into the directory we just created
    unzip $font.zip -d /usr/share/fonts/$font/
    
    # Remove the downloaded zip file
    rm $font.zip
done

# Update font cache
fc-cache -fv

echo "Nerd Fonts installed successfully!"
