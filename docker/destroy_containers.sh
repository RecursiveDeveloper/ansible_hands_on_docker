#!/bin/bash

image_name="ubuntu_ssh"
tag="latest"

docker rm -f $(docker container ls -q --filter ancestor=$image_name:$tag)
docker rmi $image_name:$tag