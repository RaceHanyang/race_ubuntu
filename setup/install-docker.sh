#!/bin/bash

# Install prerequisites
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

# Install Docker
sudo apt-get update
sudo apt-get install \
    docker-ce=5:27.2.1-1~ubuntu.24.04~noble \
    docker-ce-cli=5:27.2.1-1~ubuntu.24.04~noble \
    docker-ce-rootless-extras=5:27.2.1-1~ubuntu.24.04~noble \
    docker-buildx-plugin=0.16.2-1~ubuntu.24.04~noble \
    containerd.io=1.7.22-1
