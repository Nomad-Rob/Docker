This will show how to do bind mounts with a docker build

## Requirements
- Docker application installed on your host machine
- Docker account
- IDE (VSCode or whatever you prefer)
- Makefile extensions (optional) but used in this repo

## Usage
This Dockerfile is tailored for Python applications that require specific packages and run on port 5000. To build and run a container using this Dockerfile:

1. Place the Dockerfile in the root of your Python project directory.
2. Ensure you have a `requirements.txt` file listing your dependencies.
3. Build the Docker image: `docker build -t your-image-name .`
4. Run the container: `docker run -p 5000:5000 your-image-name`
5. Access your application at `http://localhost:5000`
6. Enter the container's shell: `docker exec -it your-container-name sh` when this happens you will be in the environment of the container and can run commands in the container while using the vscode extensions.

## Customization
- You can change the base image and Python version according to your application's requirements.
- Adjust the `WORKDIR`, `COPY`, and `EXPOSE` directives to suit your project's structure and networking needs.
- Modify environment variables as per your application configuration.


# Docker Bind Mounts

This document explains how to use bind mounts in Docker, focusing on two different flags: `-v` and `--mount`. Bind mounts are a powerful feature that allows you to mount directories or files from the host machine into a container, enabling a wide range of functionalities including file sharing and persistent data storage.

## The `-v` Flag
- **Legacy Option**: The `-v` flag is the traditional method of creating bind mounts in Docker.
- **Usage Simplicity**: It offers a simpler and shorter syntax, making it quick and easy to use for straightforward mounting tasks.
- **Example Use**: In our Makefile, we use the `-v` option to bind the host's `/app` directory to the same path in the container. This setup is beneficial for keeping the file structure clean and consistent between the host and the container.
- **Local Development**: Ideal for local development environments, especially when working with IDEs like VS Code, as it allows you to maintain your code on your local machine and utilize VS Code extensions while running and testing your application inside the container.
- **Syntax**: The `-v` flag follows the format `docker run -v <host-path>:<container-path>`. 

## The `--mount` Flag
- **Newer and More Verbose**: The `--mount` flag is a more recent addition to Docker, offering a more verbose syntax compared to `-v`.
- **Increased Flexibility**: It provides enhanced flexibility and functionality, such as mounting individual files (not just directories) and supporting mounts from remote locations.
- **Advanced Use-Cases**: This flag is particularly useful for more complex or specific mounting requirements, like connecting to remote data sources or explicitly defining mount behavior.
- **Syntax**: The `--mount` syntax is more detailed, following the format `docker run --mount type=bind,source=<host-path>,target=<container-path>`.
- **Further Reading**: For an in-depth understanding and additional options available with `--mount`, refer to the [Docker run reference](https://docs.docker.com/engine/reference/commandline/run/).

In conclusion, while the `-v` flag offers simplicity and ease of use for common tasks, the `--mount` flag provides advanced capabilities for more complex mounting needs. The choice between them depends on the specific requirements of your Docker setup and the level of control or functionality you need.
In our file we choose the -v option in our makefile to do the bind mount. This allows us to utilize the directory /app of the root user in the container. 

THis just keeps your file structure clean and allows you to keep your code in a directory on your local machine while using vscode extensions. 

**You can use the shell in the container to get into the environment and run commands inside the container while using the vscode extensions.**
