# Files System Backup

![NeofetchImage](./Screenshots/BatmanNeofetch.png)

This repository includes some of mine configurations for my **terminal dotfiles** and **.config** directory.

> Note that I use **Nerd Font** for my icons and letters style. More particular I use **Hack Nerd Font**
> 
> If you want to use my files you need to install the font that I use so to make everything work smoothly
> 
> You can find more in this page: [NerdFont](https://www.nerdfonts.com/font-downloads)

Here you can see the structure for this repository:


    .
    ├── bash_files
    ├── cheat_sheets
    │   └── kitty_cheat_sheet.md
    ├── kitty
    │   └── kitty.conf
    ├── LICENSE
    ├── neofetch
    │   ├── config.conf
    │   └── neofetchImages
    │       └── LinuxPengImg
    │           ├── batmanPeg.png
    │           ├── BlueHatPeg.png
    │           ├── DrunkPeg.png
    │           ├── gunPeg.png
    │           ├── ningaPeg.png
    │           ├── phdPeg.png
    │           └── SamuraiPeg.png
    ├── README.md
    ├── Screenshots
    │   └── BatmanNeofetch.png
    └── scripts
        └── installingPrograms.sh

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

So to have similar **command line** you can run this command.

`mkdir ~/.dotfiles ; cp -r bash_files ~/.dotfiles ; ln -s ~/.dotfiles/bash_files/.bashrc ~/.bashrc`

#### Let's break down the command

1. First we create a file `.dotfiles`.
2. Then we copy the `bash_files` directory to the `.dotfiles`.
3. In this step we create a **symlink** for the `.bashrc` to our `$HOME` directory.

### Config Directories
If you want the configuration files for your system you need to move the `kitty` and/or `neofetch` toy your **.config** directory witch is in your `$HOME` (`~`) directory.

---

## TODO

I will write a scrip so to automate this process of moving files and directories.
