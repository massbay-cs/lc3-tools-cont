# LC3 tools
A Docker container solution for the CS214 the lc3 tools and compilers (Without the need for Linux or a VM!)

## What is it?
A method of running the lc3 tools and compiler without the need for a linux instance or running VMware/VirtualBox.

### Getting started
---
Be sure to install and read the documentation
* **Windows**: https://docs.docker.com/docker-for-windows/
* **MacOS**: https://docs.docker.com/docker-for-mac/
* **Linux**: You don't need this if you're already running Linux...

### Build
---
#### Pull from Hub...
```
docker pull massbaycs214/lc3tools
```
#### ...Or Build image from source
```
docker build -t lc3tools .
```
---
#### Run
```
docker run -it lc3tools
```
