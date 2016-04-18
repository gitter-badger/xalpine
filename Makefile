CONTAINER=xalpine
IMAGE=ymst180/xalpine
TAG=latest

build:
	docker build --rm -t $(IMAGE):$(TAG) .
run:
	docker run -d --privileged \
		--name $(CONTAINER) \
		$(IMAGE)
exec:
	docker exec -it $(CONTAINER) bash
rm:
	docker rm -f $(CONTAINER)
