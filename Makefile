RUBY_VERSION=2.5.1
RUBY_GITLAB_VERSION=4.10.0

default:
	@echo "Available targets are:"
	@echo "build: Builds the version ${VERSION} of this docker image"
	@echo "push: Publishes the image to Docker Store"

build:
	docker pull ruby:${RUBY_VERSION}
	docker build -t "augustohp/ore-gitlab-cli:${RUBY_GITLAB_VERSION}" -t "augustohp/ore-gitlab-cli:latest" .

push:	
	docker push "augustohp/ore-gitlab-cli"	

.PHONY: build push
