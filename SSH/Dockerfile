# Use an official Python runtime as the base image
FROM python:3.8

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY requirements.txt /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables (these can be overridden by docker run)
ENV API_HOST=0.0.0.0
ENV API_PORT=5000

# Run the command to start your application/command starts your API server.
CMD ["python3", "-m", "api.v1.app"]
