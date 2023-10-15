#!/bin/sh

# Use the current directory as the source location
SOURCE_DIR="../bash_files"

# Define the destination directory
DEST_DIR="$HOME/.dotfiles"

# Create the .dotfiles directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Move the files to the .dotfiles directory
mv "$SOURCE_DIR/.bashrc" "$DEST_DIR"
mv "$SOURCE_DIR/.bash_custom_files" "$DEST_DIR"

# Create a backup of the current .bashrc (if it exists) and then link the new .bashrc with symbolic link
[ -f "$HOME/.bashrc" ] && mv "$HOME/.bashrc" "$HOME/.bashrc.backup"
ln -s "$DEST_DIR/.bashrc" "$HOME/.bashrc"

echo "Dotfiles setup complete!"
