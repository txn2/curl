IMAGE    ?= txn2/curl
VERSION  ?= $(shell git describe --abbrev=0 --tags)
.PHONY: all

all: build

build:
	docker build -t $(IMAGE):$(VERSION) -f Dockerfile .
	docker tag $(IMAGE):$(VERSION) $(IMAGE):latest
	docker push $(IMAGE):$(VERSION)
	docker push $(IMAGE):latest
