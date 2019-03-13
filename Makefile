RUBY_VERSION=2.5.1
RUBY_GITLAB_VERSION=4.10.0
DOCKER_IMAGE_NAME=augustohp/ore-gitlab-cli

.PHONY: default
default:
	@echo "Available targets are:"
	@echo "build: Builds the version ${VERSION} of this docker image"
	@echo "push: Publishes the image to Docker Store"

.PHONY: build
build:
	docker pull ruby:${RUBY_VERSION}
	docker build -t "$(DOCKER_IMAGE_NAME):${RUBY_GITLAB_VERSION}" -t "$(DOCKER_IMAGE_NAME):latest" .

.PHONY: push
push:	
	docker push $(DOCKER_IMAGE_NAME)
