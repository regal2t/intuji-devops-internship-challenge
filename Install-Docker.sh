#!/bin/bash

#first update the system
sudo apt-get update -y

#install all require package for install docker and docker compose 
sudo apt-get install docker.io -y

#start docker 
sudo service docker start

