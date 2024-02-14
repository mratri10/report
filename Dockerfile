# Use a base image with Java 17 installed
FROM maven:3.9.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM khipu/openjdk17-alpine

# Copy the Spring Boot JAR file into the container at /app
COPY target/report.jar report.jar

# Expose the port that your Spring Boot application runs on
EXPOSE 2080

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "your-spring-boot-app.jar"]
