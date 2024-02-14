# Use a base image with Java 17 installed
#FROM maven:3.9.5-openjdk-17 AS build
#COPY . .
#RUN mvn clean package -DskipTests

#FROM khipu/openjdk17-alpine

# Copy the Spring Boot JAR file into the container at /app
#COPY target/report.jar report.jar

# Expose the port that your Spring Boot application runs on
#EXPOSE 2080

# Specify the command to run your Spring Boot application

#CMD ["java", "-jar", "report.jar"]

FROM techiescamp/jre-17:1.0.0
WORKDIR /app

# Copy the JAR file (/app)
COPY /target/*.jar ./java.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "java.jar"]
