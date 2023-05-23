all: build up

build: 
	cd srcs && docker compose -f docker-compose.yml build

up:
	cd srcs && docker compose -f docker-compose.yml up

stop:
	cd srcs && docker compose -f docker-compose.yml down

clean:
	docker system prune -af

fclean: clean
	rm -rf /home/hlevi/data/DB/*
	rm -rf /home/hlevi/data/WordPress/*

re: fclean all

.PHONY: all clean fclean re
