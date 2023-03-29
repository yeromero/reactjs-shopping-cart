# Workshop - Hands On - Understanding Containers

Example of how to run containers from scratch, using a simple app implemented by Kris Urbas in react.js and redux.js

- Designed by Daniel Penagos
  
- Forked By Manuel Alejandro Vargas

for the original demo of the app [click here](http://krzysu.github.io/reactjs-shopping-cart/)

## getting started

Install all the requirements on the server.

## 1. Install Docker

```sh
sudo apt-get install     apt-transport-https ca-certificates     curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt-get install docker-ce


docker --version

```

The user is now able to run some commands, but not all of them. To enable add the user into the docker group

```sh

sudo usermod -a -G docker <user>

sudo newgrp docker

```

Restart the session.
DPENAGBO TODO: Add the command to restart the session without closing the session.

Now you should be able to run this command:

```sh

docker ps

```

<!-- No longer necessary
## 2. Install Docker-Compose

```sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

```
-->

## 3. Install the app framework

Run this just to understand how the application works on virtual machine -without docker-. This is intented to understand from the developer's perspective how to develop and run the app.

```sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

source ~/.bashrc

nvm install 11

```

## 4. Clone the repo and run the app

You will find the app developed by Kris Urbas, the Dockerfile and the docker-compose.yaml designed for this hands-on.

```sh

git clone https://github.com/malevarro/reactjs-shopping-cart.git

cd reactjs-shopping-cart

npm install

npm start

```

In a browser open the app running in your machine on port 3000

## 5. Let's build an image of the app

Run this command to look the images already downloaded/installed on the virtual machine

```sh
docker image ls
```

Now it's time to build our own docker image. You should be located where the Dockerfile is.

```sh
docker build -t Malevarro/kart .
```

Check the existing images on the virtual machine

```sh
docker image ls
```

## 6. Run the container with the app

```sh
docker run -d --name kart -p 3000:3000 Malevarro/kart

docker ps

```

To kill the container:

```sh
docker kill kart
```

## 7. Example of docker-compose

Another example of how to run containers in a declarative way is by using Docker-compose.

Please check the docker-compose.yaml file. You will find the description of a Jenkins CI Server. Run the following command:

```sh
docker-compose up -d

docker ps
```

* * *

author of the kart app: Kris Urbas [@krzysu](https://twitter.com/krzysu)
licence: MIT
