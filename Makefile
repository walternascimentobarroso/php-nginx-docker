up:
	docker-compose up -d

stop:
	docker-compose stop

destroy:
	docker-compose down

build:
	docker-compose up --build -d

composer:
	docker-compose exec php_default composer install

bash_php: up
	docker-compose exec php_default bash

bash_nginx: up
	docker-compose exec nginx_default bash
