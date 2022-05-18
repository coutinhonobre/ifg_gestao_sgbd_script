#!/bin/bash

sudo chmod -R 777 ./ &&
sudo apt-get update && apt-get install -y sudo wget ca-certificates &&
sudo apt-get install -y libpq5 libpq-dev &&
sudo apt-get install ssl-cert && sudo dpkg -i libssl.deb &&
sudo dpkg -i ./postgresql-client.deb && sudo dpkg -i ./postgresql.deb



