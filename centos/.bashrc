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
function bashrc(){
	code ~/.bashrc
}
function git-save(){
	git config --global credential.helper store
}
function own(){
	sudo chown -R pedroferreira .
}
function idea()
{
    nohup $HOME/.local/share/JetBrains/Toolbox/apps/IDEA-U/ch-0/192.6603.28/bin/idea.sh &
}
function netbeans()
{
    nohup $HOME/Netbeans/netbeans-8.0.1/bin/netbeans --jdkhome $JAVA_HOME/ &
}
function run()
{
    cd $HOME/Autopsy/autopsy-quarkus/
    ./mvnw clean compile quarkus:dev
}
function react()
{
    cd $HOME/Autopsy/web/
    npm start
}
function lookup()
{
    grep -Ri "$1" $2
}
function locate()
{
    find $2 -name "$1"
}
function proc()
{
    netstat -tulpn | grep :$1
}
function dock()
{
    sudo lxc-attach -n centos
}
function start()
{
    sudo lxc-start -n centos -d
}
function prod()
{
    cd ~/Autopsy/prod/api-quarkus/target
    sudo -E java -Djava.awt.headless=true -jar autopsy-quarkus-1.0-SNAPSHOT-runner.jar
}
function deploy()
{
    cd ~/Autopsy/web/
    npm run build
    sudo rm -rf /var/www/autopsy/build
    sudo cp -r build /var/www/autopsy/build
}
function jav()
{
    cd ~/Autopsy/prod/api-quarkus
    git pull
    ./mvnw clean compile quarkus:build
    cd ..
    cp config.properties api-quarkus/target
}

alias qmake=/usr/bin/qmake-qt4

export JAVA_HOME=/usr/java/jdk1.8.0_221-amd64
#export JAVA_HOME=/usr/java/jdk1.8.0_221-i586
export TSK_HOME=$HOME/Autopsy/sleuthkit

eval $(dircolors -b $HOME/.dircolors)
neofetch --ascii_distro void --disable packages
