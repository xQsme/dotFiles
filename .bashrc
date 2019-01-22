#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

function commit() {
    git add .
    git commit -a -m "$1"
    git push
}
function android(){
    sudo adb start-server
        npm start
}
function apk(){
    exp build:android
}
function react-new(){
	create-react-native-app "$1"
}
function mcif(){
	cd /run/media/xqsme/54341A5F341A4500/Users/Jabroni/Documents/EI/MCIF/
}

neofetch
eval $(dircolors -b $HOME/.dircolors)
