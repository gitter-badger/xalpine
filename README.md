![AlpineLinux](https://raw.githubusercontent.com/ymst180/xalpine/master/alpinelinux.png)  
  
# AutoBuildAlpineDockerfile - xalpine
- [BaseAlpineImageRepository(usage3.3)](https://hub.docker.com/_/alpine/)  
- [DockerHubRepository](https://hub.docker.com/r/ymst180/xalpine/)  
- [GitHubRepository](https://github.com/ymst180/xalpine)  
  
- - -
| Alpine	| Base		| Runtime	| Tag		|
|:---------:|:---------:|:---------:|:---------:|
| 3.3		| xalpine	| -			| sshd		|
| -			| -			| -			| nginx		|
| -			| -			| node		| ghost		|
- - -
  
##### [latest](https://github.com/ymst180/xalpine/blob/master/latest/Dockerfile)(bash)
```
docker run -it --name latest \
	ymst180/xalpine:latest
```
  
##### [sshd](https://github.com/ymst180/xalpine/blob/master/latest/Dockerfile)
```
docker run -itd --name sshd \ 
	-p 22:22 \
	ymst180/xalpine:sshd
#$sudo ssh root@localhost -p 22
#password:root
```
  
##### [nginx](https://github.com/ymst180/xalpine/blob/master/nginx/Dockerfile)
```
docker run -d --name nginx \
	-p 80:80 -p 443:443 \
	-v www:/var/www \
	ymst180/xalpine:nginx
```
  
##### [ghost](https://github.com/ymst180/xalpine/blob/master/ghost/Dockerfile)
```
docker run -itd --name ghost \ 
	-p 2368:2368 \
	ymst180/xalpine:ghost
```
  

