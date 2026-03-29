#!/bin/bash

apt update -y
apt install -y docker.io

systemctl start docker
systemctl enable docker

docker build -t my-webapp .

docker run -d -p 80:80 --restart always 
docker run -d -p 80:80 --restart always my-webapp