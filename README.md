# mariadb-vagrant
A simple vagrant box with MariaDB 10.1 and CentOS 7.2.

## Getting started
1. Clone this repository
2. Install Virtualbox
3. Install Vagrant
4. Install VirtualBox plugin `vagrant plugin install vagrant-vbguest`
5. Run `vagrant up`

After the initial install, you may need to run `vagrant reload` to restart the VM. This will refresh the port forwarding.

## Connecting to MariaDB
Using any client that connects to MySQL, use the following settings:

Host: `127.0.0.1`  
User: `root`  
Password: `password`  
Port: `3306`

Ensure that MySQL is not running on your machine before starting up, as there will be a port conflict. Vagrant will soon tell you :)

---
_Note: Only be used for development purposes._
