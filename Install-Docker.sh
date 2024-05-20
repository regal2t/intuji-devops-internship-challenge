#!/bin/bash

#first update the system
sudo apt-get update -y

#install all requirement  for docker and docker compose 
sudo apt-get install docker.io -y
sudo apt-get install docker-compose -y

#start docker 
sudo service docker start

