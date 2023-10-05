


sudo yum update

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl start docker#!/bin/bash

yum makecache -y

yum install -y git wget

yum install -y yum-utils
