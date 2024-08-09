# Setup Debian Homelab Server

## Overview
This project automates the configuration and management of a Debian-based homelab server. The goal is to utilize Ansible for extensive automation of service deployment and system configuration, avoiding the use of Docker Compose to enhance the application of Ansible capabilities.

## Features
- **Service Deployment**: Automated deployment of various services using Docker, including Jenkins, Grafana, Prometheus, and more.
- **Package Management**: Installation of essential packages required for system operation and monitoring.
- **User Management**: Automated configuration of user accounts and permissions.
- **System Monitoring**: Setup of monitoring tools like cAdvisor and Node Exporter to keep track of system performance.
- **Web UI**: A simple web interface to access links to all deployed services conveniently.

## Getting Started
### Prerequisites
- A Debian-based system with sudo privileges.
- Internet connection for downloading necessary packages and Docker images.

### Installation
Since this setup is intended for a clean Debian installation without git installed, I'll use wget to download the repository.
1. Download the repository using wget and extract it:
   ```bash
   wget https://github.com/SebaViana/setup_debian/archive/refs/heads/main.tar.gz -O setup_debian.tar.gz
   tar -xzf setup_debian.tar.gz
   cd setup_debian
   ```

2. Run the setup script with root privileges:
   ```bash
   sudo bash setup.sh
   ```

3. The script will handle the installation of Ansible, configuration of necessary packages, and deployment of services.

### Usage
After installation, the deployed services can be accesed through the Web UI deployed at the IP address of your server on the configured port.

## Configuration
- Configure service settings and ports by editing the Ansible roles located in the `roles/` directory.
- Add or remove services by modifying the `main.yml` playbook.
