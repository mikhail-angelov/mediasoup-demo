include .env

build:
	cd app; npm run build
	cd server; docker build --tag ${DOCKER_TAG} .

push:
	docker push mangelov/mediasoup-demo:latest

scp:
	scp ./.env root@${DOMAIN}:/opt/mediasoup/.env
	scp ./services.conf root@${DOMAIN}:/opt/mediasoup/services.conf
	scp ./docker-compose.yml root@${DOMAIN}:/opt/mediasoup/docker-compose.yml
	ssh root@${DOMAIN} 'mkdir -p /opt/mediasoup/ssl'

deploy:
	@echo "deploy"
	ssh root@${DOMAIN} 'cd /opt/mediasoup; docker-compose down; docker-compose down -v; docker pull ${DOCKER_TAG}; docker-compose up --build --no-color --force-recreate -d'
