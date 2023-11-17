#!/bin/sh

# Detect the Linux distribution
distro=$(grep '^ID=' /etc/os-release | cut -d= -f2)

# Source the appropriate installation sctipt
case $distro in
    fedora)
        . ./install_programs/install_programs_fedora.sh
        ;;
    ubuntu | debian)
        #. ./install_programs/install_programs_fedora.sh
        ;;
    *)

    echo "Unsupported distribution: $distro"
    exit 1
    ;;
esac