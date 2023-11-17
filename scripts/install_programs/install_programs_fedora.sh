#!/bin/sh
#
# This scrip just install some programs for my system.
# It is a simple script, for Fedora system using DNF package manager.
#
# Packages:
# [Kitty terminal, vim, brave browser, neofetch, vs code]

. ./install_programs/ascii_art.sh

##########################################
############### Update dnf ###############
##########################################
fedora_art
# Update our package manager.
sudo dnf update -y

##########################################
################# KITYY ##################
##########################################
install_kitty(){
  kitty_terminal_art
  echo "Intalling Kitty terminal..."
  # Install Kitty terminal from dnf package manager
  sudo dnf install kitty -y

}

##########################################
################# VIM ####################
##########################################
install_vim(){
  vim_art
  echo "Intalling vim commanf line editor..."
  # Install Vim command line editor
  sudo dnf install vim -y
}

##########################################
################# Brave ##################
##########################################
install_brave(){
  brave_art
  echo "Installing Brave browser stable..."
  # Install Brave Browser Stable
  sudo dnf install dnf-plugins-core

  sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

  sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

  sudo dnf install brave-browser -y

  # From https://brave.com/linux/
}


##########################################
################ Neofetch ################
##########################################
install_neofetch(){
  neofetch_art
  echo "Installing neofetch..."
  # Install neofetch using dnf
  sudo dnf install neofetch -y
}


##########################################
################# VS Code ################
##########################################
install_vs_code(){
  vs_code_art
  echo "Installing VS code..."
  # Install the key and the repository 
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

  # Install the package of VS studio (Fedora 22 and above)
  sudo dnf install code -y
}

##########################################
################# lsd ####################
##########################################
install_lsd(){
  sudo dnf install dnf -y
}


main(){
  install_kitty
  install_vim
  install_brave
  install_neofetch
  install_vs_code
  install_lsd

}

main