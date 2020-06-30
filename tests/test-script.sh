#!/bin/bash

set -ex

# Install dependencies
ansible-galaxy collection install -r .github/collections/requirements.yml

# Run test
ansible-playbook playbooks/example_with_yaml/configure_tower.yml -e tower_hostname=http://localhost -e tower_username=admin -e tower_password=password