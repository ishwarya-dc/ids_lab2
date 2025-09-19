FROM openjdk:8-jre-alpine

EXPOSE 8080

#COPY ./build/libs/java-app-SNAPSHOT.jar /usr/app/
# Copy the JAR from the Gradle build output
COPY ./my-project-master/build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/java-app-1.0-SNAPSHOT.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
