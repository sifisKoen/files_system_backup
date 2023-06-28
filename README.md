# Files System Backup

![NeofetchImage](./Screenshots/BatmanNeofetch.png)

This reposiroty includes some of mine configurations for my **terminal dotfiles** and **.config** directory.

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
        └── installingProgramms.sh

## Installation

So to make all these configs visible and available to you, Firstly you need to `clone` this repository to your preference directory in your system. Then you need to coppy the files or the directories to your `$HOME` directory (`~`). 

### Dot Files
If the file you want for your system is dot file then you need to move files from **bash_files** directory into your `$HOME` directory.

Run this code.

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
