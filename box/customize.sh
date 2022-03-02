#!/usr/bin/env bash

set -e

# Install additional packages
sudo apt-get install -y \
vim

# Install docker
# TODO: Fix me later
#export DEBIAN_FRONTEND=noninteractive;curl -sSL https://releases.rancher.com/install-docker/"${DOCKER_VERSION}".sh | sh -

apt install -y ca-certificates curl apt-transport-https && \
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
  echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
  apt update && \
  apt-get install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker vagrant

# This doesn't seme to be working. TODO: Debug later.
# Add SSH public keys
# curl https://github.com/leodotcloud.keys >> ${HOME}/.ssh/authorized_keys
