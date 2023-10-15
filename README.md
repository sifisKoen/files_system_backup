# Files System Backup

![NeofetchImage](./Screenshots/BatmanNeofetch.png)

This repository includes some of mine configurations for my **terminal dotfiles** and **.config** directory.

> Note that I use **Nerd Font** for my icons and letters style. More particular I use **Hack Nerd Font**
> 
> If you want to use my files you need to install the font that I use so to make everything work smoothly
> 
> You can find more in this page: [NerdFont](https://www.nerdfonts.com/font-downloads)

Here you can see the structure for this repository:


    ├── bash_files
    ├── cheat_sheets
    │   └── kitty_cheat_sheet.md
    ├── kitty
    │   └── kitty.conf
    ├── LICENSE
    ├── neofetch
    │   ├── config.conf
    │   └── neofetchImages
    │       └── LinuxPengImg
    │           ├── batmanPeg.png
    │           ├── BlueHatPeg.png
    │           ├── DrunkPeg.png
    │           ├── gunPeg.png
    │           ├── ningaPeg.png
    │           ├── phdPeg.png
    │           └── SamuraiPeg.png
    ├── README.md
    ├── Screenshots
    │   ├── BatmanNeofetch.png
    │   ├── Command Prompt.png
    │   └── lsd Command Example.png
    └── scripts
        ├── dotfiles_install.sh
        ├── installingPrograms.sh
        └── nerdfont_install.sh

## Installation

So to make all these configs visible and available to you, Firstly you need to `clone` this repository to your preference directory in your system. Then you need to copy the files or the directories to your `$HOME` directory (`~`). 

### Dot Files
If the file you want for your system is dot file then you need to move files from **bash_files** directory into your `$HOME` directory.

Before that you will need to install `lsd` command. Witch is a replacement of the `ls` command. With combination with the **Nerd Font** and my **alias** you will have an output like this:

![lsdCommand](./Screenshots/lsd%20Command%20Example.png)

To install the `lsd` command just run this command:

`sudo apt/dnf/pacman snd`

And when you apply all the dot files, you will have a **command line** like this:

![CommandPrompt](./Screenshots/Command%20Prompt.png)

So to have similar **command line** you need to follow the two simple steps:

### Install Nerd Fonts

Firstly you need to install some **Nerd fonts** for this reason there is a scrip under the `script` directory. You just need to run this script.

`cd scripts/`

Then you need to make the script executable for this just run: `chmod +x nerdfont_install.sh`

And now you are ready to run the script. Very important ! **The script will install the nerd fonts under /usr/share/fonts directory** the reason behind this is because in this way the fonts will be available to all users in the machine.

Now to run the script just run this command: `sudo ./nerdfont_install.sh`

### Config the command line

Now that you have the **Nerd fonts** to your fonts directory you can run an other script in the `scripts` directory, the `dotfiles_install.sh`. This script will create the `.dotfiles` directory in your `$HOME` and will move the dotfiles from the cloned repo to this directory and finally it will create symbolic link for the new `.bashrc` file.

You just need to run the script with as before it needs to change its privilege to executable just run this command: `chmod +x .dotfiles_install.sh` and now you can run the script using this command: `./dotfiles_install.sh` 

### Config Directories
If you want the configuration files for your system you need to move the `kitty` and/or `neofetch` toy your **.config** directory witch is in your `$HOME` (`~`) directory.

---

## TODO

I will write a scrip so to automate this process of moving files and directories.
