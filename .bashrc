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
    react-native run-android
}
function debug(){
    react-native log-android
}
function apk(){
    ./gradlew assembleRelease
}
function emu(){
    ~/Android/Sdk/emulator/emulator -avd Pixel_2_API_28 &
}
function bashrc(){
    subl3 ~/.bashrc
}
function serve(){
    php artisan serve
}
function git-save(){
    git config --global credential.helper store
}
function pulse(){
	killall pulseaudio
	pulseaudio --start
}
function layout(){
    setxkbmap -layout us
}
function host(){
    sudo php artisan serve --host "$1"
}
function own(){
    sudo chown -R xqsme .
}
neofetch | lolcat
eval $(dircolors -b $HOME/.dircolors)
