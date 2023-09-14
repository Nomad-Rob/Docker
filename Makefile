# Builds a docker image for a development box
build:
	docker build -t dev-box .

# Runs the dev-box image in a container
# This will run the image in the background and map port 2022 to the ssh port on the dev box
# Feel free to add more ports as needed, (ex: docker run -d -p 2022:22 -p 9000:80 dev-box)
run:
	docker run -d -p 2022:22 -p 8080:8080 -p 9000:9000 -p 9001:9001 --name dev-box dev-box

start:
	docker start dev-box

# SSH into the running dev-box
ssh:
	ssh -p 2022 root@localhost

# Stop all running docker containers
stop:
	docker stop $$(docker ps -a -q)

# Remove all docker containers
clean:
	docker rm $$(docker ps -a -q)

# Remove all docker images, containers, and volumes
nuke:
	docker system prune -af

# Reset known hosts on local machine for port 2022
# This may need to be run if you make a new dev-box and aren't able to ssh into it
reset-known-hosts:
	ssh-keygen -R [localhost]:2022
