# .PHONY is used to tell make that these commands are not files
.PHONY: 
	install run clean

# All commands start with make

# Change these variables to match your project
NAME="Rob Farley"
IMAGE=nomadrob/testing_ssh
CONTAINER=test_ssh
TAG=latest

# Builds a docker image for a development box with an image name
build:
		docker build . -t "${IMAGE}:${TAG}"

# Runs the image name in a container
# This will run the image in the background and map port 5000 to the API port on the dev box
# Feel free to add more ports as needed, (ex: docker run -d -p 2022:22 -p 9000:80 image name)
run:
	docker run -d --name ${CONTAINER} -p 5000:5000 -e API_HOST=0.0.0.0 -e API_PORT=5000 ${IMAGE}

start:
	docker start ${CONTAINER}

# SSH into the running dev-box
ssh:
	ssh -p 2022 root@localhost
	
# Publishes the image to docker hub
publish: build
	docker push ${IMAGE}:${TAG}
  
# Install dependencies for the project
install: requirements.txt
	pip3 install -r $<
	
# Stop the running docker container
stop:
	docker stop ${CONTAINER}

# Remove all pycache files
clean:
	find . -name \*.pyc -delete
  
# Remove the container and image
remove:
  docker rm ${CONTAINER}

# Logs the container
logs:
  docker logs ${CONTAINER}

# Remove all docker images, containers, and volumes
nuke:
	docker system prune -af

# Reset known hosts on the local machine for port 2022
# This may need to be run if you make a new dev-box and aren't able to ssh into it
reset-known-hosts:
	ssh-keygen -R [localhost]:2022
