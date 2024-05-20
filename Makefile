# Makefile pour automatiser les tâches Docker

# Variables
IMAGE_NAME := dockedlac/poucard
TAG := latest

# Construire l'image Docker
build:
	@docker build -t $(IMAGE_NAME):$(TAG) .

# Pusher l'image sur Docker Hub
push:
	@docker push $(IMAGE_NAME):$(TAG)

# Puller l'image depuis Docker Hub
pull:
	@docker pull $(IMAGE_NAME):$(TAG)

# Commanede par défaut
.PHONY: build push pull run run-with-volume