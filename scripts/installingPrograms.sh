#
# This scrip just install some programs for my system.
# It is a simple script, for Fedora system using DNF package manager.
#
# Packages:
# [Kitty terminal, vim, brave browser, neofetch, vs code]

# ASCII_ART ---------------------------------------------------{{{

fedora_art="${cl1}
            .'ccccc:.             
        ,'ccccccccccccccc:.        
     .';cccccccccccccccccccc:.     
   .'ccccccccccccco@@@@bccccccc; 
  .:cccccccccccccd@@cccq@@:cccccc, 
 .:ccccccccccccc@@@ccccc@@Pccccccc;
,:cccccccccccccc@@@ccccccccccccccc:
ccccccccco@@@@@c@@@@@@@ccccccccccc:
cccccccd@@cccccc@@@ccccccccccccccc:
cccccc@@occccccc@@@ccccccccccccccc'
ccccccq@@bcccccd@@Pccccccccccccc;  
ccccccccq@@@@@@@Pccccccccccccc:,   
'cccccccccccccccccccccccccc:.      
 ;ccccccccccccccccccccc:,.
 "

vs_studio_ascii="${cl1}
██╗   ██╗███████╗    ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ 
██║   ██║██╔════╝    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗
██║   ██║███████╗    ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║
╚██╗ ██╔╝╚════██║    ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║
 ╚████╔╝ ███████║    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝
  ╚═══╝  ╚══════╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝
"

kitty_terminal_ascii="${cl3}
██╗  ██╗██╗████████╗████████╗██╗   ██╗    ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗     
██║ ██╔╝██║╚══██╔══╝╚══██╔══╝╚██╗ ██╔╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║     
█████╔╝ ██║   ██║      ██║    ╚████╔╝        ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║     
██╔═██╗ ██║   ██║      ██║     ╚██╔╝         ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║     
██║  ██╗██║   ██║      ██║      ██║          ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗
╚═╝  ╚═╝╚═╝   ╚═╝      ╚═╝      ╚═╝          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝
"

vim_ascii="${cl1}
██╗   ██╗██╗███╗   ███╗
██║   ██║██║████╗ ████║
██║   ██║██║██╔████╔██║
╚██╗ ██╔╝██║██║╚██╔╝██║
 ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═══╝  ╚═╝╚═╝     ╚═╝
"

brave_ascii="${cl3}
██████╗ ██████╗  █████╗ ██╗   ██╗███████╗
██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔════╝
██████╔╝██████╔╝███████║██║   ██║█████╗  
██╔══██╗██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  
██████╔╝██║  ██║██║  ██║ ╚████╔╝ ███████╗
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝
"

neofetch_ascii="${magenta}
███╗   ██╗███████╗ ██████╗ ███████╗███████╗████████╗ ██████╗██╗  ██╗
████╗  ██║██╔════╝██╔═══██╗██╔════╝██╔════╝╚══██╔══╝██╔════╝██║  ██║
██╔██╗ ██║█████╗  ██║   ██║█████╗  █████╗     ██║   ██║     ███████║
██║╚██╗██║██╔══╝  ██║   ██║██╔══╝  ██╔══╝     ██║   ██║     ██╔══██║
██║ ╚████║███████╗╚██████╔╝██║     ███████╗   ██║   ╚██████╗██║  ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝     ╚══════╝   ╚═╝    ╚═════╝╚═╝  ╚═╝
"

# }}}

##########################################
################ Colors ##################
##########################################

green="\033[1;32m"
magenta="\033[1;35m"
red="\033[1;31m"
cl1="${green}"
cl2="${magenta}"
cl3="${red}"


##########################################
############### Update dnf ###############
##########################################

echo -e "$fedora_art"

# Update our package manager.
sudo dnf update -y

##########################################
################# KITYY ##################
##########################################

echo -e "$kitty_terminal_ascii"

# Install Kitty terminal from dnf package manager
sudo dnf install kitty -y

##########################################
################# VIM ####################
##########################################

echo -e "$vim_ascii"

# Install Vim command line editor
sudo dnf install vim -y

##########################################
################# Brave ##################
##########################################

echo -e "$brave_ascii"

# Install Brave Browser Stable
sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser -y

# From https://brave.com/linux/

##########################################
################ Neofetch ################
##########################################

echo -e "$neofetch_ascii"

# Install neofetch using dnf
sudo dnf install neofetch -y

##########################################
################# VS Code ################
##########################################

echo -e "$vs_studio_ascii"

# Install the key and the repository 
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Install the package of VS studio (Fedora 22 and above)
sudo dnf install code -y
