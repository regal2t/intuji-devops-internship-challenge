# Raju Tiwari

### 1.Install Docker in linux using bash script(Install-Docker.sh)

[Link]()

### 2.Cloning GitHub Repository [Link]((https://github.com/silarhi/php-hello-world.git).)

```bash
git clone (https://github.com/silarhi/php-hello-world.git).

```
#### 2.1 Create Dockerfile
[Link]()

Building Dockerfile
```bash
sudo docker build -t phpimg .
```
Run dockerfile
```bash
sudo docker run -d -it -p 8000:80 --name phpcontainer phpimg
```
![Image]()

### 2.2 Push to DockerHub


```bash 
sudo docker tag phpimg rajutiwari181627/helloimg:v1.0

sudo docker push rajutiwari181627/helloimg:v1.0
```

![Image]()

[Link to dockerhub](https://hub.docker.com/r/rajutiwari181627/helloimg)


##  3 create docker-compose & run 

[create docker-compose.yaml file]()

```bash
sudo docker-compose up -d
```

![Image]()

## 4 install jenkins 

```bash 
#require java version 11 on your system (this is for ubuntu 22.4 )

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \https://pkg.jenkins.io/debian-stable binary/ | sudo tee \/etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install jenkins
```
![Image]()
```bash 
default port for jenkins is 8080
```
![Image]()