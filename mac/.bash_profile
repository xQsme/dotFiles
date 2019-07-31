function commit() {
    git add .
    git commit -a -m "$1"
    git push
}
function bashrc(){
    code ~/.bash_profile
}
function git-save(){
    git config --global credential.helper store
}
function own(){
    sudo chown -R jabroni .
}

neofetch
