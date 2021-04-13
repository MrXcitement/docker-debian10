# Makefile --- make the debian10 docker image
# Mike Barker <mike@thebarkers.com>
# April 12th, 2021

DOCKER_USER ?= mrbarker
NAME ?= debian10
VER  ?= 1.0.0
IMAGE := $(DOCKER_USER)/$(NAME)
TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
TAG := $(IMAGE):$(TIMESTAMP)
TAG_VER := $(IMAGE):$(VER)
TAG_LATEST := $(IMAGE):latest

.PHONY: all clean login run
all: tag

build:
	@docker build -t $(TAG) .	
	$(shell echo $(TAG) > $@)

clean:
	rm -f build push push-* tag tag-*
	@docker system prune -f

login:
	@docker login -u $(DOCKER_USER)

push: tag build
	$(eval TAGGED := $(shell cat build))
	@docker push $(TAGGED)
	@docker push $(TAG_VER)
	@docker push $(TAG_LATEST)
	touch $@

run: tag build
	$(eval TAGGED := $(shell cat build))
	@docker run --rm -it $(TAGGED)

tag: tag-ver tag-latest build
	touch $@

tag-ver: build
	$(eval TAGGED := $(shell cat build))
	@docker tag $(TAGGED) $(TAG_VER)
	touch $@

tag-latest: build
	$(eval TAGGED := $(shell cat build))
	@docker tag $(TAGGED) $(TAG_LATEST)
	touch $@

