#!/usr/bin/env bash
sudo DEBIAN_FRONTEND=noninteractive
sudo apt-get install build-essential software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get -y install python-software-properties
sudo curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get -y install nodejs
sudo npm install -g ganache-cli
sudo npm install -g truffle
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum -y