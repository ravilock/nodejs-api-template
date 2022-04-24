build:
	docker-compose build &&\
	docker-compose -f docker-compose.override.yml build

dev:
	docker-compose up
