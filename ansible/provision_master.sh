#!/bin/bash

ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -N ""

cat /root/.ssh/id_ed25519.pub > authorized_keys

apt update -y
apt install -y software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt install -y ansible