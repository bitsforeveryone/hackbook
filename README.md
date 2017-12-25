# Mac Hacking Ansible Playbook [![Build Status](https://travis-ci.org/bitsforeveryone/hackbook.svg?branch=master)](https://travis-ci.org/bitsforeveryone/hackbook)

This playbook will automate the setup of your MacBook to ensure you have necessary tools for hacking.  It is meant to be configurable, and to help introduce useful tools.

*Ideas stolen from*:  
- [geerlingguy][mac-dev-setup]  
- [donnemartin][dev-setup]  
- [mpereira][macbook-playbook]

## Installation

From a default install of OS X, you need `git` installed to start.  Install the XCode command line tools, then clone the repo.
1. `xcode-select --install`
2. `git clone https://github.com/bitsforeveryone.com/hackbook`
3. `cd hackbook && ./go.sh`

## Overriding Defaults / Enabling Packages and FeaturesA

Defaults are in the variables file [group_vars/main.yml](group_vars/main.yml) file.  Edit this file by turning options on/off with `true`/`false` or by commenting/uncommenting packages to be installed.

## Included Applications / Configuration (Default)

Applications (installed with Homebrew Cask):

  - [Docker](https://www.docker.com/)
  - [Dropbox](https://www.dropbox.com/)
  - [Firefox](https://www.mozilla.org/en-US/firefox/new/)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Homebrew](http://brew.sh/)
  - [Slack](https://slack.com/)
  - [Vagrant](https://www.vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/wiki/Downloads)


Packages (installed with Homebrew):

  - autoconf
  - bash-completion
  - git
  - go
  - hub
  - httpie
  - sqlite
  - nmap
  - cowsay
  - readline
  - openssl
  - pv
  - wget

Applications (installed with pip):



## Optional Additional Applications / Configuration 

Applications (installed with Homebrew Cask):

  - [nvALT](http://brettterpstra.com/projects/nvalt/)
  - [Sublime Text](https://www.sublimetext.com/)
  - [cutter](https://github.com/radareorg/cutter/)
  - [powershell](https://github.com/PowerShell/PowerShell)
  - [vagrant]()

Packages (installed with Homebrew):

  - autoconf
  - gpg
  - iperf
  - fcrackzip
  - foremost
  - hexedit
  - pngcheck
  - pwntools
  - radare2
  - unicorn
  - docker

[mac-dev-setup]: https://github.com/geerlingguy/mac-dev-playbook
[dev-setup]: https://github.com/donnemartin/dev-setup
[automating-with-ansible]: http://www.nickhammond.com/automating-development-environment-ansible/
[macbook-playbook]: https://github.com/mpereira/macbook-playbook
