# Makefile pour automatiser les tâches Docker

# Variables
IMAGE_NAME := dockedlac/poucard
#LATEST_TAG := $$(git describe --tags --abbrev=0)
REPO := europe-west9-docker.pkg.dev/poucard/poucard/poucard
LATEST_TAG := latest

# show:
# 	@echo $$(git describe --tags --abbrev=0)

# Construire l'image Docker
build:
	@docker build -t $(IMAGE_NAME):$(LATEST_TAG) .

# Pusher l'image sur Docker Hub
push:
	@docker push $(REPO)

# Puller l'image depuis Docker Hub
pull:
	@docker pull $(REPO)

# Commanede par défaut
.PHONY: build push pull run run-with-volume