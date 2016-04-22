CONTAINER=xalpine_node_1
IMAGE=ymst180/xalpine
TAG=node

build:
	docker build --rm -t $(IMAGE):$(TAG) .
bash:
	docker run -it \
	 	--name $(CONTAINER) $(IMAGE):${TAG} bash
rm:
	docker rm -f $(CONTAINER)
