#
# ~/.bashrc
#

#` If not running interactively, don't do anything
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
function ssh-ipl(){
	ssh admin2care@172.22.21.26
}
function debug(){
	react-native log-android
}
function apk(){
	./gradlew assembleRelease
}
function bundle()
{
	./gradlew bundleRelease
}
function emu(){
	~/Android-SDK/emulator/emulator -avd Pixel_2_API_28 &
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
function login(){
	cd ~/Git/LoginManagerApp
}
function serve(){
	php artisan serve
}
function docs(){
    cd /run/media/xqsme/54341A5F341A4500/Users/Jabroni/Documents/
}
function mcif(){
	cd /run/media/xqsme/54341A5F341A4500/Users/Jabroni/Documents/EI/MCIF/
}
function git-save(){
	git config --global credential.helper store
}
function own(){
	sudo chown -R xqsme .
}
function link(){
	react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res
}
function layout(){
	setxkbmap -layout us
}
function host(){
	sudo php artisan serve --host "$1"
}
function cache(){
	paccache -rk1
	paccache -ruk0
}

neofetch
eval $(dircolors -b $HOME/.dircolors)