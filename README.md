# Zabbix Docker Compose

This repository contains a Docker Compose setup for deploying Zabbix, an open-source monitoring solution for network monitoring and application monitoring.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Docker
- Docker Compose

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/zabbix-docker-compose.git
    cd zabbix-docker-compose
    ```

2. Build and start the containers:

    ```bash
    docker-compose up -d
    ```

3. Access the Zabbix web interface:

    Open your web browser and navigate to `http://localhost:8080`. You should see the Zabbix login page.

## Configuration

### Zabbix Agent Configuration

The Zabbix agent configuration is managed using Ansible. The playbook `push_zabbix_agent.yaml` installs and configures the Zabbix agent on target hosts.

To run the Ansible playbook:

```bash
ansible-playbook [push_zabbix_agent.yaml](http://_vscodecontentref_/1) -i inventory