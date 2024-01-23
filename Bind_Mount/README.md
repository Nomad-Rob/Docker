This will show how to do bind mounts with a docker build

## Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile extensions (optional) but used in this repo

## Bind Mount
This will show how to do bind mounts with a docker build
In you can do bind mounts two differnt ways. Choose the -v or --mount flag. The -v flag is the older way of doing bind mounts. The --mount flag is the newer way of doing bind mounts. The --mount flag is more verbose but it is more flexible. The --mount flag allows you to do more things like mount a file instead of a directory. The --mount flag also allows you to do things like mount a volume from a remote server. For more information on the --mount flag you can go to the [docker run reference](https://docs.docker.com/engine/reference/commandline/run/).

In our file we choose the -v option in our makefile to do the bind mount. This allows us to utilize the directory /app of the root user in the container. 



Still issues with CHMOD with files in the bind mount. I think it is because the files are owned by root and not the user. I think I need to change the user in the container to the same user as the host machine. I think I can do this with the USER command in the Dockerfile. I will try this next.
