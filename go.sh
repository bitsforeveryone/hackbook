#!/usr/bin/env bash

# Install Xcode Command Line Tools
xcode-select --install

# Install PIP, if not already installed
which pip > /dev/null || echo "[*] Installing python pip"
which pip > /dev/null || sudo -H easy_install pip

# Install Ansible, if not already installed
#  ref: http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-pip
which ansible-playbook > /dev/null || echo "[*] Installing ansible."
which ansible-playbook > /dev/null || sudo -H pip install ansible

# Install Homebrew, if not already installed
which brew > /dev/null || echo "[*] Installing homebrew."
which brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Run ansible playbook.
echo "[*] Running playbook, standby."
ansible-playbook mb-dev-single.yml -i ./hosts 
