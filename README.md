# packer-ubuntu

## Steps

- Install HashiCorp Packer 1.0.0
- Install VirtualBox 5.1.22
  - Install also VirtualBox Extension Pack

- Download this packer template for ubuntu 16.04.2
- Run: `packer build ubuntu-16.04-amd64.json` to build the vagrant box

- Install HashiCorp Vagrant 1.9.4
  - Run: `vagrant plugin install vagrant-share --plugin-version 1.1.8`
    to fix the issue: _kernel\_require.rb:54:in `require': cannot load such file -- vagrant-share/helper/api (LoadError)_

- Configure VAGRANT_HOME to store the built vagrant box
  - `export VAGRANT_HOME=...`
- Add the built vagrant box to VAGRANT_HOME/boxes:
  - `vagrant box add -name ubuntu-16.04-amd64-virtualbox ubuntu-16.04-amd64-virtualbox.box`

## Acknowlegement
The packer template is inspired by [packer-templates](https://github.com/kaorimatz/packer-templates)


