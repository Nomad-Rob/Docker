# Makefile for managing Docker containers

# Variables
COMPOSE = docker-compose

# Build the Docker images
build:
	$(COMPOSE) build

# Start the containers
run:
	$(COMPOSE) up -d

# Stop the containers
stop:
	$(COMPOSE) down

# Stop and remove containers, networks, images, and volumes
clean:
	$(COMPOSE) down --rmi all --volumes

# Display the status of the containers
status:
	$(COMPOSE) ps

# Tail the logs of the containers
logs:
	$(COMPOSE) logs -f

# Rebuild and start the containers
rebuild: build up

# Default action
.PHONY: up down clean status logs build rebuild
default: up
