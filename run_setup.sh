#!/bin/bash

sudo apt update

sudo apt install ansible -y

ansible --version

ansible-playbook setup_ubuntu.yml
