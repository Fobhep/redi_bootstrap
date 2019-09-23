#!/bin/bash
set -e

if (( $EUID != 0 )); then
    echo "Please run as root!"
    exit
fi

apt install ansible -y
ansible-playbook bootstrap.yaml -v
