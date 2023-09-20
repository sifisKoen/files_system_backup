# In this file I have all my aliases.
# I have incluted some aliases so to make my workflow easier.
# Make the call to your .bashrc file so to work.
# Include this command to your .bashrc -> source ~/.dotfiles/.bash_custom_files/.bash_aliases


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

# Display Images in Command Line
alias icat='kitty +kitten icat'

# lsd -lSF --group-directories-first --extensionsort --header
alias lsd='lsd -lSF --group-directories-first --extensionsort --header'

# lsd -alSF --group-directories-first --extensionsort --header
alias la='lsd -alSF'


# Open pdf files
alias open='xdg-open'
