# .bashrc

# Change my default Editor
EDITOR=/usr/bin/vim
# Add date and time on bash history
HISTTIMEFORMAT="%F %T "
# Ignore duplicate commands in the history
HISTCONTROL=ignoredups



blue=$(tput setaf 61);
green=$(tput setaf 216);
grey=$(tput setaf 24);
orange=$(tput setaf 166);
bold=$(tput bold);
reset=$(tput sgr0);


user_name="\[${grey}\]\u";
host_machine="\[${blue}\]@\h ";
current_directory="\[${green}\][\w] ";
end="\[${reset}\]";
b_thikness="\[${bold}\]";
prtompt_arrow="\[${green}\] ";
git_status="\[${orange}\]\$(git_branch)";
git_directory="\[${orange}\]\$(git_directory)";


my_custom_prompt=$b_thikness;
my_custom_prompt+=$user_name;
my_custom_prompt+=$host_machine;
my_custom_prompt+=$current_directory;
my_custom_prompt+=$git_directory;
my_custom_prompt+=$git_status;
my_custom_prompt+=$prtompt_arrow;
my_custom_prompt+=$end;

PS1=$my_custom_prompt;
export PS1;

#######################################
############ My Colors ################
#######################################




blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset


#######################################
############ My Functions #############
#######################################

function git_directory() {
    if [ -d .git ] ; then
        printf " "
    fi
}


function git_branch() {
    if [ -d .git ] ; then
        printf "%s  " "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}


extr() { 
    if [ -f $1 ] ; then 
      case $1 in 
        *.tar.bz2) tar xjf $1;; 
        *.tar.gz) tar xzf $1;; 
        *.bz2) bunzip2 $1;; 
        *.rar) unrar e $1;; 
        *.gz) gunzip $1;; 
        *.tar) tar xf $1;; 
        *.tbz2) tar xjf $1;; 
        *.tgz) tar xzf $1;; 
        *.zip) unzip $1;; 
        *.Z) uncompress $1;; 
        *.7z) 7z x $1;; 
        *)     echo "'$1' cannot be extracted via extract()" ;; 
         esac 
     else 
         echo "'$1' is not a valid file" 
     fi 
}

# Change directory and list files
cdl(){
    cd $1; ls -lah
}

# Create new directory and navigate to it
mkdircd(){
    mkdir $1; cd $1
}

#######################################
############ My Aliases ###############
#######################################

# Search through command history for a specific command
alias hist='history | grep'

# Ping five times only
alias ping='ping -c 10'

# Upgrade dnf
alias upgrade='sudo dnf upgrade -y'

# Grep Coloring
alias grep='grep --color=auto'

# Upgrade font cashe for /usr/lockal/fonts
alias fontuc='sudo fc-cache -fv'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
