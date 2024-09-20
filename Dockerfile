FROM openjdk:17-jdk-alpine

EXPOSE 8080

WORKDIR /app

COPY ./spring-petclinic-3.3.0-SNAPSHOT.jar app.jar

CMD java -jar app.jar
