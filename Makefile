# Makefile pour automatiser les tâches Docker

# Variables
IMAGE_NAME := dockedlac/poucard
LATEST_TAG := $$(git describe --tags --abbrev=0)

# show:
# 	@echo $$(git describe --tags --abbrev=0)

# Construire l'image Docker
build:
	@docker build -t $(IMAGE_NAME):$(LATEST_TAG) .

# Pusher l'image sur Docker Hub
push:
	@docker push $(IMAGE_NAME):$(LATEST_TAG)

# Puller l'image depuis Docker Hub
pull:
	@docker pull $(IMAGE_NAME):$(LATEST_TAG)

# Commanede par défaut
.PHONY: build push pull run run-with-volume