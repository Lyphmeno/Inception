# syntax=docker/dockerfile:1

FROM		debian:buster

RUN			apt-get update && apt-get upgrade -y
RUN			apt-get install -y mariadb-server

COPY		./conf/entrypoint.sh /entrypoint.sh

ENTRYPOINT	["/entrypoint.sh"]

CMD			["tail", "-f", "/dev/null"]
