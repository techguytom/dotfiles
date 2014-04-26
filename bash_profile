export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/bin:$PATH
#export PATH=/usr/local/Cellar/php54/5.4.27/bin:$PATH
export SENCHA_CMD_3_0_0="/Users/tjenkins/bin/Sencha/Cmd/3.0.2.288"
export PATH=/Users/tjenkins/bin/Sencha/Cmd/3.0.2.288:$PATH
export PATH=~/.composer/vendor/bin:$PATH

#enables color in the terminal bash shell export
export CLICOLOR=1

#sets up the color scheme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up the prompt color (currently a green similar to linux terminal)
function last_two_dirs {
pwd | rev | awk -F / '{print $1,$2}' | rev | sed s_\ _/_
}

#export PROMPT_DIRTRIM=2
export PS1='\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;36m\]$(last_two_dirs)\[\033[00m\]\$ '
#sets up proper alias commands when called
#alias ls='ls -G'
#alias ll='ls -hl'
#sets up the tab for item to show the current system
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'

# Aliases
alias cdsites="cd ~/Sites/sites"
alias vagrant80="sudo ipfw add 100 fwd 127.0.0.1,8080 tcp from any to me 80"
alias vagrant443="sudo ipfw add 101 fwd 127.0.0.1,8443 tcp from any to me 443"
alias wpdebug="tail -f wp-content/debug.log"
source /usr/local/share/chruby/chruby.sh
eval "$(rbenv init -)"
