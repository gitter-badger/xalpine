MAINTAINER=ymst180
IMAGE=xalpine
TAG=glassfish
CONTAINER=$(IMAGE)_$(TAG)_1
REPOSITORY=$(MAINTAINER)/$(IMAGE)

build:
	docker build --rm -t $(REPOSITORY):$(TAG) .
rebuild:
	docker build --no-cache=true --rm -t ${REPOSITORY}:${TAG} .
bash:
	docker run -it --rm --name $(CONTAINER) $(REPOSITORY):${TAG} /bin/bash
exec:
	docker exec -it $(CONTAINER) /bin/bash
rm:
	docker rm -f $(CONTAINER)
