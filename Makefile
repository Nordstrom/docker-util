container_registry := quay.io/nordstrom
container_name := util
container_release := 2017-03-13

.PHONY: build/image tag/image push/image

build/image: Dockerfile
	docker build \
		--build-arg="http_proxy=$(http_proxy)" \
		--build-arg="https_proxy=$(https_proxy)" \
		-t $(container_name) .

tag/image: build/image
	docker tag $(container_name) $(container_registry)/$(container_name):$(container_release)

push/image: tag/image
	docker push $(container_registry)/$(container_name):$(container_release)