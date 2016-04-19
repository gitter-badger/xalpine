CONTAINER=xghost
IMAGE=ymst180/xalpine
TAG=ghost

build:
	docker build --rm -t $(IMAGE):$(TAG) .
run:
	docker run -d \
	 	-p 2368:2368 \
	 	--name $(CONTAINER) $(IMAGE)
bash:
	docker run -it \
	 	--name $(CONTAINER) $(IMAGE) bash
exec:
	docker exec -it $(CONTAINER) bash
rm:
	docker rm -f $(CONTAINER)
