REGISTRY = localhost:5001
PROJECT = gemfire
IMAGE_NAME = ${REGISTRY}/${PROJECT}-image:latest

all: 
	docker image ls localhost:5001/gemfire-image:latest

image-history:
	docker image history ${IMAGE_NAME}

delete-container: 
	docker rm  ${PROJECT}

start-container: 
	docker start ${IMAGE_NAME}

stop-container:
	docker stop ${IMAGE_NAME}

build-image:
	docker build -t ${IMAGE_NAME} .

deploy-image:
	docker push ${IMAGE_NAME}

run-container:
	docker run --name ${PROJECT} -it ${IMAGE_NAME} 

active-containers:
	docker ps --format '{{.Image}}'