# As of 2023-09-13, Ubuntu 22.04 is the latest LTS release
FROM ubuntu:22.04

# This will stop openssh-server installer from opening a dialog,
# which would require human input
ENV DEBIAN_FRONTEND=noninteractive

# Update APT and upgrade currently installed software
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git

# Install SSH so we can connect to the container
RUN apt-get install -y openssh-server

# Install other software as needed
# Example:
# RUN apt-get install -y nodejs npm
# RUN npm install -g create-react-app
# RUN apt-get install -y python3 python3-pip
# RUN pip3 install flask

# Allow root to login via SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Allow password to login via SSH
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Set SSH password to "root"
RUN echo 'root:root' | chpasswd

# Start the SSH service
RUN service ssh start

# Setup git config
RUN git config --global user.email REPLACE_WITH_YOUR_EMAIL@DOMAIN.COM
RUN git config --global user.name "REPLACE WITH YOUR NAME"

# Example of how to include your SSH key for GitHub:
# COPY host-machine-github-private-key /root/.ssh/github-private-key
# RUN chmod 600 /root/.ssh/github-private-key
# RUN echo 'eval `ssh-agent -s`' >> /root/.bashrc
# RUN echo 'ssh-add ~/.ssh/github' >> /root/.bashrc

# Run the SSH service on container startup
CMD ["/usr/sbin/sshd", "-D"]
