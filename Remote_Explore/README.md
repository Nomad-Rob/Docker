This will go over how to SSH into a docker container with the VSCode Remote Development extension.

# Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile extensions (optional) but used in this repo
- Dockerfile extension in VSCode
- Remote Explorer extension in VSCode
- Dev Container extension in VSCode

# Steps in order to remote explore into a docker container with Dev Boxes
- Have requirements installed
- On your local machine create a directory for your project
- Check the Makefile/Dockerfile is setup correctly the way you want it
- Build the docker image
- Run the docker container
- Open the Remote Explorer extension in VSCode
- Click on the docker container you want to Remote Explore  into at the top left
- Once opened in new window or tab Git Clone your repo into the container
- Do your work

