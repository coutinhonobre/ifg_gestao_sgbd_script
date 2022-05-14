#!/bin/bash

sudo apt-get update && apt-get install -y sudo wget ca-certificates

cp pgdg.list /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

sudo apt-get update && LC_ALL=en_US.UTF-8 DEBIAN_FRONTEND=noninteractive  sudo apt-get install -y -q libpq-dev
sudo apt-get install make gcc g++
cd ./postgres
./configure
gmake
su
gmake install
adduser postgres
mkdir /usr/local/pgsql/data
chown postgres /usr/local/pgsql/data
su - postgres
/usr/local/pgsql/bin/initdb -D /usr/local/pgsql/data
/usr/local/pgsql/bin/postgres -D /usr/local/pgsql/data >logfile 2>&1 &
/usr/local/pgsql/bin/createdb test
/usr/local/pgsql/bin/psql test
cd ../


# /etc/ssl/private can't be accessed from within container for some reason
# (@andrewgodwin says it's something AUFS related)
sudo  mkdir /etc/ssl/private-copy; mv /etc/ssl/private/* /etc/ssl/private-copy/; rm -r /etc/ssl/private; mv /etc/ssl/private-copy /etc/ssl/private; chmod -R 0700 /etc/ssl/private; chown -R postgres /etc/ssl/private

## Add over config files
cp postgresql.conf /etc/postgresql/8.3/main/postgresql.conf
cp pg_hba.conf /etc/postgresql/8.3/main/pg_hba.conf
sudo chown postgres:postgres /etc/postgresql/8.3/main/*.conf
cp init-postgresql /usr/local/bin/init-postgresql
sudo chmod +x /usr/local/bin/init-postgresql

