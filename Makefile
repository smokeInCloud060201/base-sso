#Define environment variables
ifndef PROJECT_NAME
PROJECT_NAME := base-sso
endif

ifndef DOCKER_BIN:
DOCKER_BIN := docker
endif

ifndef DOCKER_COMPOSE_BIN:
DOCKER_COMPOSE_BIN := docker-compose
endif

build-api-image:
	${DOCKER_BIN} build -t ${PROJECT_NAME}:latest .

init: build-api-image
init:
	${DOCKER_COMPOSE_BIN} -f ./build_infra/docker-compose.yaml up -d

teardown:
	${DOCKER_COMPOSE_BIN} -f ./build_infra/docker-compose.yaml down -v
