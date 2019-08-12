# react.js shopping cart


Example of how to run containers from scratch, using a simple app implemented by Kris Urbas in react.js and redux.js 
Designed by Daniel Penagos

for the original demo of the app [click here](http://krzysu.github.io/reactjs-shopping-cart/)

## getting started

Install all the requirements on the server.

1. Install Docker

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

```

Restart the session. 
DPENAGBO TODO: Add the command to restart the session without closing the session.

Now you should be able to run this command:
```sh

docker ps

```

2. Install Docker-Compose

```sh
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

```

3. Install the app framework. Node JS

```sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

source ~/.bashrc

nvm install 11

```

4. Clone the repo with the app developed by Kris Urbas

```sh

git clone https://github.com/danielpenagos/reactjs-shopping-cart.git

cd reactjs-shopping-cart

npm install

npm start

```

In a browser open the app running in your machine on port 3000

5. Let's build an image of the app

Run this command to look the images already downloaded on the virtual machine

```sh
docker image ls
```

Now it's time to build our own docker image. You should be located where the Dockerfile is. 

```sh
docker build -t banrep/kart .
```

Check the existing images on the virtual machine

```sh
docker image ls
```

Run the container with the app

```sh
docker run -d --name kart -p 3000:3000 banrep/kart

docker ps

```

To kill the container:


```sh
docker kill kart
```

Another example of how to run containers in a declarative way is by using Docker-compose. 

Please check the docker-compose.yaml file. You will find the description of a Jenkins CI Server. Run the following command:

```sh
docker-compose up -d
```

Install all the requirements on the server and the dependencies for the app. Then starts local dev server

## details
- build with [create react app](https://github.com/facebookincubator/create-react-app). Check their page for more details.
- this example is using redux.js for application state management, to learn more about it I recommend [this tutorial](https://egghead.io/courses/getting-started-with-redux).
- you can look under the hood directly from your browser using [redux devtools](https://github.com/zalmoxisus/redux-devtools-extension). Install extension for your browser, open demo page (link above) and see how app state changes when you interact with it.
- if you wonder why reducers, actions and selectors are all in one file inside folder called `ducks`, [read more here](https://github.com/erikras/ducks-modular-redux).

## TODO
- add reducers and selectors unit tests

* * *
author: Kris Urbas [@krzysu](https://twitter.com/krzysu)   
licence: MIT
