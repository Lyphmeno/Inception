Inception Project :
===================

Welcome to the Inception project !

This project focuses on setting up a small infrastructure composed of different services using Docker and Docker Compose. The goal is to create a virtualized environment with specific rules and configurations.

Project Description
-------------------

The Inception project challenges you to build an infrastructure with the following components:

1.  **NGINX Container:**
    * Configured to support TLSv1.2 or TLSv1.3 only.
    * Responsible for handling web traffic.
2.  **WordPress + php-fpm Container:**
    * Contains WordPress and php-fpm.
    * Handles the dynamic PHP content for the website.
3.  **MariaDB Container:**
    * Contains the MariaDB database.
    * Provides the backend storage for WordPress.
4.  **Volumes:**
    * WordPress Database Volume: Stores the database used by WordPress.
    * WordPress Website Files Volume: Stores the files for the WordPress website.
5.  **Docker Network:**
    * Establishes the network connection between the containers.

Project Requirements
--------------------

* Each service must run in a dedicated container using Docker.
* Docker images for each service must be built from scratch using your own Dockerfiles. You cannot use pre-built Docker images or services like DockerHub, except for the base images like Alpine or Debian.
* Performance optimization is achieved by building containers using the penultimate stable version of Alpine or Debian.

Getting Started
---------------

1.  Set up a virtual machine environment.
2.  Write Dockerfiles for each service (NGINX, WordPress + php-fpm, MariaDB) to define their respective configurations.
3.  Create a docker-compose.yml file to specify the services, volumes, and network connections.
4.  Use a Makefile to build the Docker images from your Dockerfiles.
5.  Launch the containers using the docker-compose command.
6.  Verify that the services are up and running, and that they can communicate with each other within the network.

Resources
---------

* [Docker](https://docs.docker.com/)
