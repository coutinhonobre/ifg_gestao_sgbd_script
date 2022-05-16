#!/bin/bash

sudo apt-get update && apt-get install -y sudo wget ca-certificates
sudo apt install gdebi-core
sudo apt-get install -y libpq5 libpq-dev
sudo gdebi libssl.deb


sudo apt-get update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive
sudo gdebi postgres-client.deb 
sudo gdebi postgresql.deb



