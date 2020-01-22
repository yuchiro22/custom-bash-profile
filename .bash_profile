function homestead() {
	(cd ~/Homestead && vagrant $*)
}

function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

alias bash_profile='source ~/bash_profile'

alias la='ls -a'
alias ll='ls -l'

alias gs='git status'
alias gc='git commit'
alias gl='git log'
alias gd='git diff'
alias gb='git branch'
alias gau='git add -u'

source ~/.git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

export PATH=$PATH:$HOME/.composer/vendor/bin 
export PS1='\t:\[\e[36m\]\W\[\e[1;32m$(__git_ps1 "(%s)")\[\e[0m\]\$ ';
