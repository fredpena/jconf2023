#FROM eclipse-temurin:17-jre
#COPY target/*.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "/app.jar"]
#FROM openjdk:17-alpine
FROM arm64v8/openjdk:17-slim
MAINTAINER fredpena.dev
EXPOSE 41485
COPY target/app.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
