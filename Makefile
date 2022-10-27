build:
	docker-compose build

up:
	docker-compose up

down:
	docker-compose down

ps:
	docker-compose ps

restart: down up

shell:
	docker-compose exec web ash
