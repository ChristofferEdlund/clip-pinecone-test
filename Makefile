DOCKER_NAME := pinecone:clip
DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
PORT := 8889

build:
	docker build . -t $(DOCKER_NAME)

start: 
	docker run -it --gpus all -v $(DIR):/app -p $(PORT):$(PORT) $(DOCKER_NAME) /bin/bash