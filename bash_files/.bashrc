# .bashrc

############ My Configs #############
source ~/.dotfiles/.bash_custom_files/.bash_config
############ My Functions #############
source ~/.dotfiles/.bash_custom_files/.bash_git_functions
source ~/.dotfiles/.bash_custom_files/.bash_tool_functions
############ My Aliases ###############
source ~/.dotfiles/.bash_custom_files/.bash_aliases

user_icon="\[${grey}\]  "
computer_icon="\[${blue}\]   "
directory_icon="\[${green}\]   "
double_arrows="  "
user_name="\[${grey}\]\u";
host_machine="\[${blue}\]\h";
current_directory="\[${green}\]\w ";
end="\[${reset}\]";
b_thikness="\[${bold}\]";
prtompt_arrow="\[${green}\] ";
git_status_functions_call="\[${orange}\]\$(git_status_functions)";


my_custom_prompt=$b_thikness;
my_custom_prompt=$user_icon;
my_custom_prompt+=$user_name;
my_custom_prompt+=$double_arrows;
my_custom_prompt+=$computer_icon;
my_custom_prompt+=$host_machine;
my_custom_prompt+=$double_arrows;
my_custom_prompt+=$directory_icon;
my_custom_prompt+=$current_directory;
my_custom_prompt+=$git_status_functions_call
my_custom_prompt+=$prtompt_arrow;
my_custom_prompt+=$end;

PS1=$my_custom_prompt;
export PS1;


#######################################
#######################################

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
