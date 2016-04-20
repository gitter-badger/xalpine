build:
	docker build --rm -t ymst180/xalpine:nginx .
run:
	docker run -d --name nginx -p 80:80 -p 443:443 ymst180/xalpine:nginx
exec:
	docker exec -it nginx bash
rm:
	docker rm -f nginx
