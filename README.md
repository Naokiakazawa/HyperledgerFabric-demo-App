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

check version after reload.
```bash
docker version
docker-compose version
node --version
npm --version
go version
```