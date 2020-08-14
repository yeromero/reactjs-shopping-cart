#!/bin/bash

sudo apt-get -y install     apt-transport-https ca-certificates     curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"

sudo apt-get -y install docker-ce

sudo usermod -a -G docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc

nvm install 11

sudo apt -y install openjdk-8-jdk-headless

sudo bash -c "echo JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 >> /etc/environment"

source /etc/environment

sudo apt -y install maven

#sudo curl -o /opt/apache-maven-3.6.3-bin.tar.gz https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

#cd /opt

#sudo tar xzvf apache-maven-3.6.3-bin.tar.gz

#sudo bash -c "echo PATH=/opt/apache-maven-3.6.3/bin:$PATH >> ~/.profile"
