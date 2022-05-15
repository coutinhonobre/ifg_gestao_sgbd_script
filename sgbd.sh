#!/bin/bash

sudo apt-get update && apt-get install -y sudo wget ca-certificates
sudo apt install gdebi-core
sudo apt-get install -y libpq5 libpq-dev
sudo gdebi libssl.deb


sudo apt-get update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive
sudo gdebi postgres-client.deb 
sudo gdebi postgresql.deb


# /etc/ssl/private can't be accessed from within container for some reason
# (@andrewgodwin says it's something AUFS related)
sudo  mkdir /etc/ssl/private-copy; mv /etc/ssl/private/* /etc/ssl/private-copy/; rm -r /etc/ssl/private; mv /etc/ssl/private-copy /etc/ssl/private; chmod -R 0700 /etc/ssl/private; chown -R postgres /etc/ssl/private

## Add over config files
cp postgresql.conf /etc/postgresql/8.3/main/postgresql.conf
cp pg_hba.conf /etc/postgresql/8.3/main/pg_hba.conf
sudo chown postgres:postgres /etc/postgresql/8.3/main/*.conf
cp init-postgresql /usr/local/bin/init-postgresql
sudo chmod +x /usr/local/bin/init-postgresql

