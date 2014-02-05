export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

# General Aliases

# Make Up/Down arrow work as an autocomplete
# ~/.bashrc
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Adjust history to ignore a few things
export HISTIGNORE="&:ls:[bf]g:exit"

# Easy way to name your tabs and windows using bash
function tabname {
  printf "\e]1;$1\a"
}
 
function winname {
  printf "\e]2;$1\a"
}
# Example from prompt to Rename tab
#tabname "Funky Tab"
# Example from promt to Rename window
#winname "Funky Window"

# Additional GIT completion script information enabled
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose"

# Source git completion script and PS1 to update the command prompt
source ~/.git-completion.sh
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Pyjobs virtual evnironment wrapper
alias mkve='mkvirtualenv -p /usr/local/bin/python2.7'
export PYTHONSTARTUP=~/.pythonrc.py
if [ -f /usr/local/bin/virtualenvwrapper.sh ]
then 
  source /usr/local/bin/virtualenvwrapper.sh
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
source ~/bash_prompt
