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

bash_php:
	docker-compose exec php_default bash

bash_nginx:
	docker-compose exec nginx_default bash

restart: stop up
