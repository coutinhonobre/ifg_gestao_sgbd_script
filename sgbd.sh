#!/bin/bash

sudo chmod -R 777 ./ &&
sudo apt-get install -y sudo wget ca-certificates &&
sudo dpkg -i libpq5.deb &&
sudo dpkg -i libpq-dev.deb &&
sudo apt-get install ssl-cert && sudo dpkg -i libssl.deb &&


LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive &&
sudo apt-get install postgresql-client-common &&
sudo dpkg -i ./postgresql-client.deb && 
sudo apt --fix-broken install &&
sudo dpkg -i ./postgresql.deb



