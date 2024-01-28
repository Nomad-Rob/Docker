# .PHONY is used to tell make that these commands are not files
.PHONY: install run clean

# All commands start with make


# Change these variables to match your project
NAME="Rob Farley"
IMAGE=nomadrob/bind_mount_test
CONTAINER=bind_mount
TAG=latest
PORT=5000

HOST_DIRECTORY=./
CONTAINER_DIRECTORY=/Docker

# Builds a docker image for a development box with an image name
build:
	@docker build . -t "${IMAGE}:${TAG}"

# Runs the image name in a container
# This will run the image in the background and map port 2022 to the ssh port on the container
# Feel free to add more ports as needed, (ex: docker run -d -p 2022:22 -p 9000:80 image name)
# -v.:/app mounts the current directory to the /app directory in the container
run:
	@docker run -d --name ${CONTAINER} -p ${PORT} -e API_HOST=0.0.0.0 -e API_PORT=5000 -v ${HOST_DIRECTORY}:${CONTAINER_DIRECTORY} ${IMAGE}

start:
	@docker start ${IMAGE}

# SSH into the running container
ssh:
	@ssh -p 2022 root@localhost
	
# Publishes the image to Docker Hub
publish: build
	@docker push ${IMAGE}:${TAG}
  
# Install dependencies for the project
install: requirements.txt
	@pip3 install -r $<
	
# Stop all running Docker containers
stop:
	@docker stop ${IMAGE}

# Remove container
clean:
	@docker stop ${CONTAINER}
	@docker rm ${CONTAINER}
  
# Remove image
remove:
	@docker stop ${IMAGE}
	@docker rm ${IMAGE}

# Logs container
logs:
	@docker logs ${IMAGE}

# Remove all Docker images, containers, and volumes
nuke:
	@docker system prune -af

# Reset known hosts on the local machine for port 2022
# This may need to be run if you make a new dev-box and aren't able to ssh into it
reset-known-hosts:
	@ssh-keygen -R [localhost]:2022
