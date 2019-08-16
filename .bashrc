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
function serve(){
	php artisan serve
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
