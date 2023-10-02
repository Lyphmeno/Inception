<!DOCTYPE html>
<html>
<body>
  <h1>Inception Project :</a></h1>
  <p>Welcome to the Inception project !</p>
  <p>This project focuses on setting up a small infrastructure composed of different services using Docker and Docker Compose. 
    The goal is to create a virtualized environment with specific rules and configurations.</p>
  
  <h2>Project Description</h2>
  <p>The Inception project challenges you to build an infrastructure with the following components:</p>
  <ol>
    <li>
      <strong>NGINX Container:</strong>
      <ul>
        <li>Configured to support TLSv1.2 or TLSv1.3 only.</li>
        <li>Responsible for handling web traffic.</li>
      </ul>
    </li>
    <li>
      <strong>WordPress + php-fpm Container:</strong>
      <ul>
        <li>Contains WordPress and php-fpm.</li>
        <li>Handles the dynamic PHP content for the website.</li>
      </ul>
    </li>
    <li>
      <strong>MariaDB Container:</strong>
      <ul>
        <li>Contains the MariaDB database.</li>
        <li>Provides the backend storage for WordPress.</li>
      </ul>
    </li>
    <li>
      <strong>Volumes:</strong>
      <ul>
        <li>WordPress Database Volume: Stores the database used by WordPress.</li>
        <li>WordPress Website Files Volume: Stores the files for the WordPress website.</li>
      </ul>
    </li>
    <li>
      <strong>Docker Network:</strong>
      <ul>
        <li>Establishes the network connection between the containers.</li>
      </ul>
    </li>
  </ol>

  <h2>Project Requirements</h2>
  <ul>
    <li>Each service must run in a dedicated container using Docker.</li>
    <li>Docker images for each service must be built from scratch using your own Dockerfiles. You cannot use pre-built Docker images or services like DockerHub, except for the base images like Alpine or Debian.</li>
    <li>Performance optimization is achieved by building containers using the penultimate stable version of Alpine or Debian.</li>
  </ul>

  <h2>Getting Started</h2>
  <ol>
    <li>Set up a virtual machine environment.</li>
    <li>Write Dockerfiles for each service (NGINX, WordPress + php-fpm, MariaDB) to define their respective configurations.</li>
    <li>Create a docker-compose.yml file to specify the services, volumes, and network connections.</li>
    <li>Use a Makefile to build the Docker images from your Dockerfiles.</li>
    <li>Launch the containers using the docker-compose command.</li>
    <li>Verify that the services are up and running, and that they can communicate with each other within the network.</li>
  </ol>

  <h2>Resources</h2>
  <ul>
    <li><a href="https://docs.docker.com/">Docker</a></li>

</body>
</html>
