# This is pulled from the official Python Docker image (https://hub.docker.com/_/python)
# Use whatever version of a language you want, but make sure it's compatible with the version of the language you're using in your code
# Can also be a Ubuntu image, or any other image that has the language you're using installed
FROM python:3.8

# Setting an variable to be used later in the Dockerfile
# ARG Cont1=/Docker
# ARG Cont2=/FolderName2
# ARG Cont3=/FolderName3

# Set the working directory in the container to the directory where the code is
# This is the directory where the code will be copied into
WORKDIR /Docker

# Copy the requirements file that you want to have set up for your environment
# if you don't have a requirements file, you can remove this line
COPY requirements.txt /Docker

# Install any needed packages specified in requirements.txt for the environment
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the directory contents into the container at /WhateverFolderNameYouWant
COPY . /Docker

# Change permissions of all files in the directory to be accessible by anyone
RUN chmod -R 777 /Docker

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables (these can be overridden by docker run)
ENV API_HOST=0.0.0.0
ENV API_PORT=5000

# Keep the container running indef 
CMD ["tail", "-f", "/dev/null"]
