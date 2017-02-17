container_registry := quay.io/nordstrom
container_name := util
container_release := 2017-02-01

.PHONY: build tag

build: Dockerfile $(build_container_prereqs)
	docker build -t $(container_name) . $(DOCKER_OPTS)

tag: build
	docker tag $(container_name) $(container_registry)/$(container_name):$(container_release)
