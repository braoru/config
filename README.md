# config

This repo contains the ansible playbook to setup my development environment on Fedora 28.
It setups:

* avahi (stop and disable avahi-daemon.service and avahi-daemon.socket)
* chrome
* vscode (with default user settings)
* docker (systemd unit enabled, set SELinux container_manage_cgroup boolean)
* git (default configuration)
* gnome (disable caps lock, alt tab only current workspace, gnome shortcuts)
* golang (install go, create workspace, set GOPATH, PATH, and CDPATH, clone some repos)
* neovim
* packages (install packages listed in `group_vars/all.yml` under key `packages`)
* telepresence
* tmux
* bash

For more detailed information, look at the playbooks.

## Requirements

Make sure the user is in the 'wheel' group, allow passwordless sudo to 'wheel' and setup the ssh connection to github.

## Configuration

Do not forget to update `ansible.cfg` and to set the variables listed in `groups_vars/all.yml`.
They define the github username, email, the gnome shortcuts, ...

## Usage

Run the playboks like this:

``` bash
    git clone git@github.com:johandroz/config
    cd config
    ansible-playbook -i inventory/local.ini main.yml
```

## neovim

The first time neovim starts, there is an error because the neovim plugins are missing.
You must install them by typing 'PlugInstall' in neovim.