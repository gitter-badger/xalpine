CONTAINER=xalpine
TAG=latest
REPOSITORY=ymst180/$(CONTAINER)

build:
	docker build --rm -t $(REPOSITORY):$(TAG) .
run:
	docker run -it --name xalpine $(REPOSITORY) /bin/bash
rm:
	docker rm -f $(CONTAINER)

