FROM openjdk:8-jre-alpine

EXPOSE 8080
RUN mkdir -p /home/app
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /home/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
