#!/usr/bin/env bash
# For Ubuntu Docker
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install nano less iptables iputils-ping

# install tools for managing ppa repositories
sudo apt-get -y install software-properties-common
sudo apt-get -y install unzip
sudo apt-get -y install build-essential
# 
sudo apt-get -y install libssl-dev 
sudo apt-get -y install libffi-dev 
# install GNU Privacy Guard
sudo apt-get install -y gnupg
# required for SDKs
sudo apt-get -y install python3-dev 
sudo apt-get -y install python3-pip
# Add snap installer
sudo apt-get -y install snapd

# Clean up cached packages
sudo apt-get clean all
