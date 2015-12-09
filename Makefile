container_registry := nordstrom
container_name := util
container_release := 2015-05-22

.PHONY: build tag

build: Dockerfile $(build_container_prereqs)
	docker build -t $(container_name) .

tag: build
	docker tag -f $(container_name) $(container_registry)/$(container_name):$(container_release)
