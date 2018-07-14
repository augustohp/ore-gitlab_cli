RUBY_VERSION=2.5.1
RUBY_GITLAB_VERSION=4.4.0

default:
	@echo "Available targets are:"
	@echo "build: Builds the version ${VERSION} of this docker image"
	@echo "push: Publishes the image to Docker Store"

build:
	docker pull ruby:${RUBY_VERSION}
	docker build -t "augustohp/ruby-gitlab-cli:${RUBY_GITLAB_VERSION}" -t "augustohp/ruby-gitlab-cli:latest" .

push:	
	docker push "augustohp/ruby-gitlab-cli"	

.PHONY: build push
