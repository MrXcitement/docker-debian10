username ?= mrbarker
imagename ?= debian-base
tag ?= 0.0.1

.PHONY: docker-login docker-run
all: docker-build

docker-build: Dockerfile
	docker build -t $(username)/$(imagename):$(tag) .	
	touch $@

docker-push: 
	docker push $(username)/$(imagename):$(tag)
	touch $@

docker-login:
	DOCKER_ID_USER="$(username)" docker login

docker-run:
	docker run --rm -it $(username)/$(imagename):$(tag)

clean:
	rm -f docker-build docker-push
