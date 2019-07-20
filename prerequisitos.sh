sudo apt-get -y install     apt-transport-https     ca-certificates     curl     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get -y install docker-ce

docker --version

git --version

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

sudo usermod -a -G docker dpenagbo

source /home/dpenagbo/.bashrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

nvm install 11

apt -y install openjdk-8-jre-headless

mkdir -p /apps/jenkins

chown -R <usuario>:<usuario> /apps/
