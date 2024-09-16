FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Copy the scripts
RUN mkdir -p /opt/race/scripts
COPY --chmod=755 ./scripts /opt/race/scripts

# Update and install necessary packages
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    git \
    vim
# Install version managed apt packages
RUN /opt/race/scripts/install-apt.sh
# Clean up
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a root user
RUN useradd -m -s /bin/bash race && adduser race sudo
RUN sed -i 's/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL:ALL) NOPASSWD: ALL/g' /etc/sudoers

WORKDIR /home/race
USER race

# Define the default command
CMD ["bash"]
