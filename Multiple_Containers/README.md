This will show how to do Multiple Containers for a project

## Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile extensions (optional) but used in this repo

## Docker Compose
This file will show how to run multiple containers with docker compose. Docker compose is a tool that allows you to run multiple containers at once. This is useful if you have an application that requires multiple containers to run. For example if you have a web application that requires a database and a web server. You can use docker compose to run both containers at once. This will allow you to run your application locally without having to deploy it to a server. This is useful for testing and development purposes.

# Docker Compose Configuration Explanation

This Docker Compose file is designed to create a multi-container Docker application with three main services: `frontend`, `backend`, and `database`. Each service is configured to meet specific requirements of a typical web application stack.

## Services Overview

### Frontend Service
- **Build Context and Environment**: The frontend service is built using the Dockerfile in the `./frontend` directory. The build argument `NODE_ENV` is set to `development`, indicating that the build context is for development purposes.
- **Port Mapping**: The service is configured to expose port 5173 on both the host and the container, allowing access to the frontend application.
- **Volumes**: A volume is mapped from the host's `./frontend` directory to `/app` in the container. This allows for live updating of the frontend code without needing to rebuild the image.
- **Restart Policy**: The service uses `unless-stopped` as its restart policy, meaning it will always restart unless explicitly stopped by the user.

### Backend Service
- **Build Context and Environment**: Similar to the frontend, the backend service uses the Dockerfile in the `./backend` directory with `NODE_ENV` set to `development`.
- **Port Mapping**: Port 3001 is exposed on both the host and the container for backend service access.
- **Volumes**: The `./backend` directory on the host is mapped to `/app` in the container, enabling live code updates.
- **Restart Policy**: The backend service also restarts automatically unless it's manually stopped.

### Database Service
- **Environment Variables**: The database service, using the `postgres:latest` image, is configured with environment variables for setting up the Postgres user, password, and database name.
- **Port Mapping**: Port 5432 is exposed, allowing database access from the host.
- **Volumes**: The `./pg_data` directory on the host is mapped to `/var/lib/postgresql/data` in the container. This mapping ensures data persistence across container restarts.
- **Restart Policy**: The database service will automatically restart unless stopped.

## Usage
To start the multi-container application, run the following command in the directory containing this `docker-compose.yml` file:

```sh
docker-compose up
