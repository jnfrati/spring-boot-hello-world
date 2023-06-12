# Start with a base image containing Java runtime
FROM openjdk:11-jdk-slim

# The application's .jar file
ARG JAR_FILE=target/spring-boot-hello-world-1.0.0-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/my-application.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]