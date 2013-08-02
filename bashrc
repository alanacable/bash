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
