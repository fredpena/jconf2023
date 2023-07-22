# Demo JConf-2023

This project is a demonstration of a system developed using Vaadin Flow, Docker, Traefik, Terraform, and Ansible. 

## System Requirements

- Java 17 or higher.
- Vaadin 24
- Spring Boot 3
- Maven 3.x.
- Docker and Docker Compose.
- Traefik
- Terraform.
- Ansible.

## Project structure

- `MainLayout.java` in `src/main/java` contains the navigation setup (i.e., the
  side/top bar and the main menu). This setup uses
  [App Layout](https://vaadin.com/docs/components/app-layout).
- `views` package in `src/main/java` contains the server-side Java views of your application.
- `views` folder in `frontend/` contains the client-side JavaScript views of your application.
- `themes` folder in `frontend/` contains the custom CSS styles.


## Deployment

### Instant Server deployment

To deploy the system, follow these steps:

1. Clone the repository

```
git clone https://github.com/fredpena/jconf2023
cd jconf2023/demo
docker-compose up 
```

2. Running the application

The project is a standard Maven project. To run it from the command line,
type `mvnw` (Windows), or `./mvnw` (Mac & Linux), then open
`http://localhost:41485` in your browser.

### Deploying to Production

To create a production build, call `mvnw clean package -Pproduction` (Windows),
or `./mvnw clean package -Pproduction` (Mac & Linux).
This will build a JAR file with all the dependencies and front-end resources,
ready to be deployed. The file can be found in the `target` folder after the build completes.

Once the JAR file is built, you can run it using
`java -jar target/app.jar`

### Deploying using Docker

To build the Dockerized version of the project, run

```
mvn clean package -Pproduction
docker build -t app:latest .
docker buildx build --platform=linux/amd64 -o type=docker -t app:latest . 
```

Once the Docker image is correctly built, you can test it locally using

```
docker run -p 41485:41485 app:latest
```

### To make the infrastructure and deploy the application on the provisioned infrastructure

- Use Terraform to provision the necessary infrastructure resources.
- Use Ansible to configure and deploy the application on the provisioned infrastructure. 

For detailed deployment instructions and customization options, please refer to the [Deployment Guide](deployment.md).


## Contact

If you have any questions or suggestions, you can contact the development team via [email](mailto:me@fredpena.dev).

