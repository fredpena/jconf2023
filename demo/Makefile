.PHONY: default test help

default: help

PROJECT_NAME=demo-jconf2023
PROJECT_DOCKER_REPOSITORY=fredpena/${PROJECT_NAME}

# COLORS
GREEN  := $(shell tput -Txterm setaf 2)
YELLOW := $(shell tput -Txterm setaf 3)
WHITE  := $(shell tput -Txterm setaf 7)
RESET  := $(shell tput -Txterm sgr0)


TARGET_MAX_CHAR_NUM=20
# Show this help.
help:
	@echo ''
	@echo '       ${YELLOW}Project ${GREEN}${PROJECT_NAME}${RESET}'
	@echo ''
	@echo 'Usage:'
	@echo '  ${YELLOW}make${RESET} ${GREEN}<target>${RESET}'
	@echo ''
	@echo 'Targets:'
	@awk '/^[a-zA-Z\-\_0-9]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")-1); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "  ${YELLOW}%-$(TARGET_MAX_CHAR_NUM)s${RESET} ${GREEN}%s${RESET}\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST)

## Clean and build
PROJECT_DEPENDENCY=dependency:go-offline -Pproduction
PROJECT_CLEAN_PACKAGE=clean package -DskipTests -Pproduction
build:
	@echo '${GREEN}Building the project: ${RESET}'$(PROJECT_NAME)
ifeq ($(OS),Windows_NT)
	@echo '${YELLOW}OS:${RESET}'$(OS)
	@.\mvnw.cmd ${PROJECT_DEPENDENCY}
	@.\mvnw.cmd ${PROJECT_CLEAN_PACKAGE}
else
	@echo '${YELLOW}OS: ${RESET}'$(shell uname)
	@./mvnw ${PROJECT_DEPENDENCY}
	@./mvnw ${PROJECT_CLEAN_PACKAGE}
endif


## Create the docker image
image:
	@echo '${GREEN}building ${RESET}'$(PROJECT_NAME)
	@docker build -t ${PROJECT_DOCKER_REPOSITORY} .

image-amd64:
	@echo '${GREEN}building ${RESET}'$(PROJECT_NAME)
ifeq ($(OS),Windows_NT)
	@docker build -t ${PROJECT_DOCKER_REPOSITORY} .
else
	@docker buildx build --platform linux/amd64 -o type=docker -t ${PROJECT_DOCKER_REPOSITORY} .
endif

## Clean docker image
clean:
	@echo '${GREEN}Clean docker image ${RESET}'$(PROJECT_NAME)
	docker-compose down -v
	docker-compose up -d

restart:
	@echo '${GREEN}Restart docker image ${RESET}'$(PROJECT_NAME)
	docker-compose down -v
	docker-compose up -d
ifeq ($(OS),Windows_NT)
	@.\mvnw.cmd
else
	@./mvnw
endif
#ifeq ($(OS),Windows_NT)
#	@echo '${YELLOW}OS:${RESET}'$(OS)
#	@.\mvnw.cmd clean install
#else
#	@echo '${YELLOW}OS: ${RESET}'$(shell uname)
#	@./mvnw clean install
#endif

## start full docker app (Using flyway)
start-app:
	@echo "Starting app (Using flyway)"
	@docker-compose up -d
	@docker-compose -f docker-compose-app.yml up -d

## Create the docker image [build, image]
build-image: build image

## Push images to dockerhub
build-push-image: build image-amd64
	@echo Pushing image to ECR
	@docker push ${PROJECT_DOCKER_REPOSITORY}