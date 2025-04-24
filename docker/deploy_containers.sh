#!/bin/bash

image_name="ubuntu_ssh"
tag="latest"
container_names=("ubuntu1" "ubuntu2")
default_port="8080"

docker build -t $image_name:$tag .

for container in ${container_names[@]}; do
    docker run -d --name $container -p $default_port:80 $image_name:$tag
    docker cp ./../ansible/authorized_keys $container:/root/.ssh/authorized_keys
    docker exec -it $container bash -c "chmod 600 /root/.ssh/authorized_keys"

    default_port=$((default_port + 1))
done