# linux-env

My Linux environment configuration. Also has some Windows stuff using Chocolatey. 

Includes a number of Ansible roles to configure an Ubuntu machine.


## Creating the Ubuntu machine with Vagrant

1. Install vagrant
2. Install the vbguest plugin with `vagrant plugin install vagrant-vbguest`
3. `vagrant up`
4. Wait awhile
5. Run ansible once the machine is up on the guest with

```sh
cd ansible
ansible-galaxy install -r requirements.yml
ansible-playbook -i localhost playbooks/main.yml
```
