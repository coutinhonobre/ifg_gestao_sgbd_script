#!/bin/bash

sudo apt-get update && apt-get install -y sudo wget ca-certificates
sudo apt-get install -y libpq5 libpq-dev
sudo dpkg -i libssl.deb


sudo apt-get update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive
sudo dpkg -i postgres-client.deb 
sudo dpkg -i postgresql.deb



