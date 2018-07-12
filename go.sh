#!/usr/bin/env bash

# Install Xcode Command Line Tools
declare xcode_installed=`xcode-select --install 2>&1 | grep 'already installed'`
if [ -z "$xcode_installed" ]; then
  xcode-select --install
else
  echo "XCode commnd line tools installed"
fi

# Install Homebrew, if not already installed 
which brew > /dev/null || echo "[*] Installing homebrew."
which brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH=/usr/local/bin:/usr/local/sbin:$PATH' > ~/.profile

# Install PIP, if not already installed
which pip > /dev/null || echo "[*] Installing python pip"
which pip > /dev/null || brew install python@2
hash -r

# Install Ansible, if not already installed
#  ref: http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-pip
which ansible-playbook > /dev/null || echo "[*] Installing ansible."
which ansible-playbook > /dev/null || sudo -H pip install ansible

# Run ansible playbook.
echo "[*] Running playbook, standby."
ANSIBLE_NOCOWS=1 ansible-playbook main.yml -i ./hosts -K
