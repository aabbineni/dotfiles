if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

source ~/git-completion.bash

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; }
export PS1="\[\033[01;34m\]\h:\[\033[01;32m\]\w\[\033[01;31m\] \$(parse_git_branch) \[\033[01;37m\]$\[\e[0m\] "
