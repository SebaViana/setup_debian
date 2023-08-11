#!/bin/bash

apt update

apt install ansible -y

ansible --version

ansible-playbook setup_ubuntu.yml
