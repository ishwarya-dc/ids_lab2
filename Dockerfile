FROM openjdk:8-jre-alpine
EXPOSE 8080

# Copy the built JAR from my-project-master build output
COPY ./my-project-master/build/libs/*.jar /usr/app/app.jar

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]
