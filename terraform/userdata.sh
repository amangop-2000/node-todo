#!/bin/bash

# Update packages
apt-get update -y

# Install Docker
apt-get install -y docker.io

# Enable Docker
systemctl enable docker
systemctl start docker

# Add ubuntu user to docker group
usermod -aG docker ubuntu

# Install Git
apt-get install -y git

# Install dependencies
apt-get install -y curl unzip

# Download AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Extract
unzip awscliv2.zip

# Install
./aws/install