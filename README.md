# AutoBuildAlpineDockerfile - xalpine

[BaseAlpineImageRepository(usage3.3)](https://hub.docker.com/_/alpine/)
![AlpineLinux](https://raw.githubusercontent.com/ymst180/xalpine/master/alpinelinux.png)  
  
[DockerHubRepository](https://hub.docker.com/r/ymst180/xalpine/)  
[GitHubRepository](https://github.com/ymst180/xalpine)  
  
##[latest](https://github.com/ymst180/xalpine/blob/master/latest/Dockerfile) 
```
docker run -it --name latest ymst180/xalpine:latest
```
  
##[sshd](https://github.com/ymst180/xalpine/blob/master/latest/Dockerfile)
```
docker run -itd --name sshd -p 22:22 ymst180:/alpine:sshd
```
  
##[ghost](https://github.com/ymst180/xalpine/blob/master/ghost/Dockerfile)
```
docker run -itd --name ghost -p 2368:2368 ymst180/xalpine:ghost
```
  

