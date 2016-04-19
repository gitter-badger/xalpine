build:
	docker build --rm -t ymst180/xalpine:latest .
run:
	docker run -d --name xalpine -p 22:22 ymst180/xalpine
exec:
	docker exec -it xalpine /bin/bash
