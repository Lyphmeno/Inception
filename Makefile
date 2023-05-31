all: build up

.PHONY:	build
build: 
	cd srcs && docker compose -f docker-compose.yml build

.PHONY: up
up:
	cd srcs && docker compose -f docker-compose.yml up

.PHONY: clean
clean:
	docker system prune -af --volumes

.PHONY: fclean
fclean: clean
	sudo rm -rf /home/hlevi/data/DB/*
	sudo rm -rf /home/hlevi/data/WordPress/*

.PHONY: re
re: fclean all
