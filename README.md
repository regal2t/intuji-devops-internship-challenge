# Raju Tiwari

### 1.Install Docker in linux using bash script(Install-Docker.sh)

[Link]()

### 2.Cloning GitHub Repository [Link]((https://github.com/silarhi/php-hello-world.git).) with local repository

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
