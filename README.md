# Docker

## Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile (optional) but used in this repo
- Dockerfile extension

## Setup
In this repo we will see the different ways to setup a docker container. One way will be to bind mount a directory from your host machine to the container. The other way is to remote explore into the container with the VSCode Remote Development extension.

## Folders
- Bind_Mount
- Multiple_Containers
- Remote_Explore

## Dockerfile
The Dockerfile is a text file that contains everything needed to build a docker image. The Dockerfile is used by the docker build command to create the docker image with all the software and dependencies needed to run the application. The Dockerfile is also used to create a docker container from the docker image. The docker container is the running instance of the docker image. The docker container is what you will interact with to run the application.

Dockerfile Syntax
The Dockerfile is made up of a series of commands that are executed in order to build the docker image. The commands are executed in order from top to bottom. During our process we listed these out in a Makefile to make it easier to build the docker image. The Makefile is not required but it is a good practice to use one. This helps with automation and makes it easier to remember the commands needed to build the docker image.

## Dockerfile Commands
To find a list of all Dockerfile commander you can go to the [Dockerfile reference](https://docs.docker.com/engine/reference/builder/). Below is a list of the commands we used in our Dockerfile.

Docker Commands that are useful to know
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

## Makefile
The Makefile is a text file that contains a set of commands to be executed. The Makefile is used to automate the process of building the docker image. The Makefile is not required but it is a good practice to use one. For scalability it is a good idea to use a Makefile to automate the process of building the docker image.

## requirements.txt
The requirements.txt file is a text file that contains a list of all the python packages needed to run the application. This will change depending on the application you are building. This file is used by the Dockerfile to install all the python packages needed to run the application.

## Extensions.text/extensions.sh
I also have a script that will take your vscode extentions, put them into an extensions.txt file, and then install them into the docker container. This is useful if you want to use the VSCode Remote Development extension to remote explore into the docker container. This will allow you to use the same extensions in the docker container as you do on your host machine.

## Docker Compose
Docker Compose is a tool that allows you to run multiple containers at once. This is useful if you have an application that requires multiple containers to run. For example if you have a web application that requires a database and a web server. You can use docker compose to run both containers at once. This will allow you to run your application locally without having to deploy it to a server. This is useful for testing and development purposes.

## Docker Hub
Docker Hub is a cloud-based repository in which you can store and share docker images. You can use Docker Hub to store and share your own images, or you can use it to find and use images created by others. Docker Hub is a great resource for finding pre-built images that you can use to run your applications. You can also use Docker Hub to store your own images and share them with others during your projects.

How to pull an image from Docker Hub like your friend's image
- `docker pull <image-name>` - This command will pull the docker image from Docker Hub. The image-name is the name of the docker image you want to pull.

How to push an image to Docker Hub
- `docker login` - This command will log you into Docker Hub. You will need to enter your Docker Hub username and password.
- `docker tag <image-name> <docker-hub-username>/<image-name>` - This command will tag the docker image with your Docker Hub username. This is required in order to push the image to Docker Hub.
- `docker push <docker-hub-username>/<image-name>` - This command will push the docker image to Docker Hub. The docker-hub-username is your Docker Hub username and the image-name is the name of the docker image you want to push.

## Resources Videos
- [Youtube Video](https://www.youtube.com/watch?v=uhDYhdMmSeg) - This video is a great resource for learning how to use Volume Mounts and Bind Mounts in Docker
- [Youtube Video](https://www.youtube.com/watch?v=Qw9zlE3t8Ko) - This video is a great resource for learning how to use Docker Compose to run multiple containers at once
- [Docker Link](https://docs.docker.com/manuals/) - This link is a great resource for learning about the Docker

## Issues
- If you have any issues with file permissions just RUN  `chmod -R 777 /<FOLDER NAME>` in the terminal where replace the `<FOLDER NAME>` with the folder name with the folder you are working in.
# TODO
- [x] Look add volumes for data persistence
- [x] Make a script for the Dockerfile commands that are ok to use after build
- [x] Docker compose file example for running multiple containers
- [ ] Make a video to show how to use the repo
- [ ] Add a section for Docker Hub
- [ ] Complete Google Slide and add it to the repo
- [ ] Add a section for Docker Volumes

# Questions
- [ ] In Docker Hub if I bind mount a directory from my host machine to the container and I make changes to the files in the container will the changes be reflected on my host machine for both parties?
- [ ] With Docker compose how can I have this in a production environment?
