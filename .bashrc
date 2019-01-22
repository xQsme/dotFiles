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
    sudo react-native run-android
}
function debug(){
    react-native log-android
}
function apk(){
    sudo ./gradlew assembleRelease
}
function emu(){
    ~/Android-SDK/emulator/emulator -avd Pixel_2_API_27 &
}
function bashrc(){
    subl3 ~/.bashrc
}
function web(){
    cd ~/Git/care-web
}
function mobile(){
    cd ~/Git/care-mobile
}
function serve(){
    php artisan serve
}
function transfer(){
	sudo android-file-transfer &
}
function git-save(){
    git config --global credential.helper store
}

neofetch | lolcat
eval $(dircolors -b $HOME/.dircolors)
