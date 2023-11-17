#!/bin/sh

check_root() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "Please run this script with sudo."
        exit 1
    fi
}

display_fonts() {
    echo "Available Nerd Fonts:"
    set -f  # Disable globbing for safe word splitting
    i=1
    for font in $fonts; do
        echo "$i. $font"
        i=$((i + 1))
    done
    set +f  # Re-enable globbing
}

read_user_selection() {
    echo "Enter the numbers of the fonts you want to install, separated by spaces (e.g., 1 3 5):"
    read -r user_input
}

process_selection() {
    selected_fonts=""
    for num in $user_input; do
        i=1
        for font in $fonts; do
            if [ "$i" -eq "$num" ]; then
                selected_fonts="$selected_fonts $font"
                break
            fi
            i=$((i + 1))
        done
    done
}

install_fonts() {
    for font in $selected_fonts; do
        echo "Installing $font..."

        # Download the font zip file
        wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
        
        # Create a directory for the font
        mkdir -p /usr/share/fonts/$font
        
        # Unzip the font
        unzip $font.zip -d /usr/share/fonts/$font/
        
        # Remove the downloaded zip file
        rm $font.zip
    done

    # Update font cache
    fc-cache -fv
}

main() {
    check_root
    cd /tmp || exit

    # List of Nerd Fonts
    fonts="CascadiaCode FiraCode Go-Mono Hack Inconsolata Iosevka JetBrainsMono Mononoki RobotoMono SourceCodePro UbuntuMono"

    display_fonts
    read_user_selection
    process_selection
    install_fonts

    echo "Selected Nerd Fonts installed successfully!"
}

main
