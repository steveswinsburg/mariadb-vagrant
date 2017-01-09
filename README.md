# mariadb-vagrant
A simple vagrant box with MariaDB 10.1 and CentOS 7.1.

## Getting started
1. Clone this repository
2. Run `vagrant up`

After the initial install, run `vagrant reload` to restart the VM. This will refresh the port forwarding.

## Connecting to MariaDB
Using any client that connects to MySQL, use the following settings:

Host: `10.19.17.12`  
User: `root`  
Password: `password`  
Port: `3306`

Ensure that MySQL is not running on your machine before starting up, as there will be a port conflict. Vagrant will soon tell you :)

---
_Note: Only be used for development purposes._
