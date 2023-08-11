#!/bin/bash

apt update

apt install sudo -y
apt install ansible -y

ansible --version

ansible-playbook playbook.yml
