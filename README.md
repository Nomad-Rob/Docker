# Docker

## Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile (optional) but used in this repo
- Dockerfile extension

## Setup
In this repo we will see the different ways to setup a docker container. One way will be to bind mount a directory from your host machine to the container. The other way is to remote explore into the container with the VSCode Remote Development extension.

## Bind Mount directory
This will show how to do bind mounts with a docker build

## SSH into container
This will go over how to SSH into a docker container with the VSCode Remote Development extension.

## Dockerfile
The Dockerfile is a text file that contains everything needed to build a docker image. The Dockerfile is used by the docker build command to create the docker image with all the software and dependencies needed to run the application. The Dockerfile is also used to create a docker container from the docker image. The docker container is the running instance of the docker image. The docker container is what you will interact with to run the application.

## Dockerfile Syntax
The Dockerfile is made up of a series of commands that are executed in order to build the docker image. The commands are executed in order from top to bottom. During our process we listed these out in a Makefile to make it easier to build the docker image. The Makefile is not required but it is a good practice to use one. This helps with automation and makes it easier to remember the commands needed to build the docker image.

## Dockerfile Commands
To find a list of all Dockerfile commander you can go to the [Dockerfile reference](https://docs.docker.com/engine/reference/builder/). Below is a list of the commands we used in our Dockerfile.

## Makefile
The Makefile is a text file that contains a set of commands to be executed. The Makefile is used to automate the process of building the docker image. The Makefile is not required but it is a good practice to use one. For scalability it is a good idea to use a Makefile to automate the process of building the docker image.

## requirements.txt
The requirements.txt file is a text file that contains a list of all the python packages needed to run the application. This will change depending on the application you are building. This file is used by the Dockerfile to install all the python packages needed to run the application.

## Extensions.text/extensions.sh
I also have a script that will take your vscode extentions, put them into an extensions.txt file, and then install them into the docker container. This is useful if you want to use the VSCode Remote Development extension to remote explore into the docker container. This will allow you to use the same extensions in the docker container as you do on your host machine. This is useful if you want to use the VSCode Remote Development extension to remote explore into the docker container. This will allow you to use the same extensions in the docker container as you do on your host machine.


# TODO
- [ ] Add USER to Dockerfile for files during build mount
- [ ] FROM command can be used to pull and image from a previous build one and start from there
- [ ] Look add volumes for data persistence
- [ ] Make a script for the Dockerfile commands that are ok to use after build
- [ ] 
