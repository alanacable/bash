# Sublime Text 2 
function subl() {
	/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl $1
}
# OSX Finder 
function finder() {
	open /System/Library/CoreServices/Finder.app $1
}
# OSX Preview
function preview() {
	open /Applications/Preview.app $1
}

function tabname {
  printf "\e]1;$1\a"
}
 
function winname {
  printf "\e]2;$1\a"
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
    . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
    export GIT_PS1_SHOWDIRTYSTATE=1
fi
