# Hyperledger Fabric demo-application

# Installation

* VirtualBox : 5.2.26
* Vagrant    : 2.0.4
* Vagrantbox : bento/ubuntu-18.04 (virtualbox, 201912.03.0)

# Usage

run environment.
```bash
vagrant up
```

attach environment.
```bash
vagrant ssh
```

change modification and run setting script.
```bash
chmod 777 ./src/setting.sh
bash ./src/setting.sh
```

Install HyperledgerFabricv1.4.4 after reload.
```bash
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.4.4
```