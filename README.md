# ansible-setup-dev

Setup dev machines using ansible.

## Dependency

 - `pip install ansible`
 
## Execution

 - `ansible-playbook -i hosts_file dev-setup.yml`
 
**Note:**

 - The root folder of the repository should be the `pwd` when the command is executed for the `dotfiles` to be found
 - The `hosts_file` should contain a section `dev` listing all the remote machines to setup (either as IP addresses or as hostnames which could be resolved by either the DNS, or using the `~/.ssh/config` file)
 

## Tasks

 - Creates a user (default: `musicallyut`) on the remote machine and ensure that the user can `sudo` without any passwords.
 - Copy over the ssh key to allow me to log into the remote machine easily.
 - Install various packages on the remote machine: `git`, `vim`, `tmux`, `htop`, etc.
 - Copy over all the dotfiles to the remote machine, and setup [`z.sh`](https://github.com/rupa/z).
 - Install the `vim` plugins using `vim-plug`.
 - Set up `nvm` and install Node version 12.
 - Download `miniconda` and extract it.
 
This leaves the remote machine ready to be used as a development platform for me.
