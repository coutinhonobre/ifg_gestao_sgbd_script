#!/bin/bash

sudo apt-get update && apt-get install -y sudo wget ca-certificates
sudo apt-get install -y libpq5 libpq-dev
chmod -R 0700 ./libssl.deb
sudo dpkg -i libssl.deb


sudo apt-get update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive
chmod -R 0700 ./postgresql.deb
chmod -R 0700 ./postgresql-client.deb
sudo dpkg -i postgres-client.deb 
sudo dpkg -i postgresql.deb



