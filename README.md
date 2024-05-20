# Raju Tiwari

### 1.Install Docker in linux using bash script(Install-Docker.sh)

[Link](https://github.com/regal2t/intuji-devops-internship-challenge/blob/master/Install-Docker.sh)

![Capture](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/8f8f07f2-5556-4f02-ba7a-2bb00d4185e0)


### 2.Cloning GitHub Repository [Link]((https://github.com/silarhi/php-hello-world.git).)

```bash
git clone (https://github.com/silarhi/php-hello-world.git).
```
![git clone](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/a7dd2793-6593-4815-ade5-a4bba87c2789)


#### 2.1 Create Dockerfile

Building Dockerfile
```bash
sudo docker build -t phpimg .
```
![build img](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/55ae770b-ff27-4d69-98f8-2ab4ed51aa9e)

Run dockerfile
```bash
sudo docker run -d -it -p 8000:80 --name phpcontainer phpimg
```
![docker run](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/ff411683-fde0-443b-9864-923189d8f69c)

## output

![port8000](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/c8806bcc-6200-48fd-8d2d-22b97d847c04)

### 2.2 Push to DockerHub

```bash 
sudo docker tag phpimg rajutiwari181627/helloimg:v1.0

sudo docker push rajutiwari181627/helloimg:v1.0
```
![docker push](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/71810b31-b698-4727-ab51-61d3f47b50fe)

[Link to dockerhub](https://hub.docker.com/r/rajutiwari181627/helloimg)

## output
![image](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/aca952b1-8bdc-4902-a161-d23db17a8eb7)



##  3 create docker-compose & run 

[create docker-compose.yaml file]()

```bash
sudo docker-compose up -d
```
![docker-compose](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/3aa38795-929f-4b36-9b49-aff022201fdf)

## output

![port8082](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/1234fb67-ce27-4331-bf72-a397a6075f1f)



## 4 install jenkins 

```bash 
#require java version 11 on your system (this is for ubuntu 22.4 )

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \https://pkg.jenkins.io/debian-stable binary/ | sudo tee \/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins
```
![jenkins start](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/1fc1efd1-dac2-4224-bad8-7cf94e04a798)

```bash 
default port for jenkins is 8080
```
![jenkins running](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/c2a7333a-bc6c-4316-a102-cbdaf5bdf10a)


#### script for jenkins(build) 
```bash
#!/bin/bash

# Variables
REPO_URL="https://github.com/regal2t/intuji-devops-internship-challenge.git"
DOCKER_IMAGE_NAME="phpimg"
DOCKER_IMAGE_TAG="latest"
WORKDIR="/var/www/html"
# Clean workspace
rm -rf $WORKDIR
# Clone the repository
git clone $REPO_URL $WORKDIR

cd php-hello-world
# Navigate to the working directory
cd $WORKDIR
# Build the Docker image
docker build -t $DOCKER_IMAGE_NAME:$DOCKER_IMAGE_TAG . .
echo "Docker image built and tagged as ${DOCKER_IMAGE_NAME}: and ${DOCKER_IMAGE_TAG}:latest"
```
![jenkins build script](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/235cac42-4124-4ce3-9c85-d88d51255286)


## result in jenkins

![build sucess 1](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/20e790f8-dee1-44a2-8335-83f5c7c58912)


![build sucess 2](https://github.com/regal2t/intuji-devops-internship-challenge/assets/59367122/96845bf4-73d7-4f81-baf2-6db68bd5da16)


# End

