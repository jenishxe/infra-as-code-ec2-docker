#!/bin/bash

apt update -y
apt install -y docker.io

apt install git -y

systemctl start docker
systemctl enable docker

git clone https://github.com/jenishxe/infra-as-code-ec2-docker.git

cd infra-as-code-ec2-docker

docker build -t my-webapp .

docker run -d -p 80:80 --restart always my-webapp