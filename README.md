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

## Multiple Containers
This will show how to run multiple containers with docker compose.

## SSH into container
This will go over how to SSH into a docker container with the VSCode Remote Development extension.

## Multiple Containers
This will show how to run multiple containers with docker compose and volumes for data persistence.

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
I also have a script that will take your vscode extentions, put them into an extensions.txt file, and then install them into the docker container. This is useful if you want to use the VSCode Remote Development extension to remote explore into the docker container. This will allow you to use the same extensions in the docker container as you do on your host machine.

# Docker Commands that are useful to know
- `docker build -t <image-name> .` - This command will build the docker image using the Dockerfile in the current directory. The -t flag is used to tag the docker image with a name. The . is used to specify the current directory. You can also specify a path to the Dockerfile if it is not in the current directory.
- `docker run -p <host-port>:<container-port> <image-name>` - This command will run the docker container using the docker image. The -p flag is used to specify the port mapping. The host-port is the port on your host machine that you want to map to the container-port. The container-port is the port that the application is running on inside the container. The image-name is the name of the docker image you want to run.
- `docker ps` - This command will list all the running docker containers.
- `docker ps -a` - This command will list all the docker containers that are running and not running.
- `docker exec -it <container-name> bash` - This command will open a bash shell inside the docker container. The -it flag is used to open an interactive terminal. The container-name is the name of the docker container you want to open a bash shell in.
- `exit` - This command will exit the bash shell inside the docker container.
- `docker stop <container-name>` - This command will stop the docker container. The container-name is the name of the docker container you want to stop.
- `docker rm <container-name>` - This command will remove the docker container. The container-name is the name of the docker container you want to remove.
- `docker rmi <image-name>` - This command will remove the docker image. The image-name is the name of the docker image you want to remove.
- `docker images` - This command will list all the docker images on your host machine.
- `docker volume ls` - This command will list all the docker volumes on your host machine.
- `docker volume rm <volume-name>` - This command will remove the docker volume. The volume-name is the name of the docker volume you want to remove.
- `docker volume prune` - This command will remove all the docker volumes on your host machine.

# TODO
- [ ] Look add volumes for data persistence
- [ ] Make a script for the Dockerfile commands that are ok to use after build
- [ ] Docker compose file example for running multiple containers
- [ ] Make a video to show how to use the repo
