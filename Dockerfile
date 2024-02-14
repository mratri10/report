# Use a base image with Java 17 installed
FROM khipu/openjdk17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container at /app
COPY target/report.jar report.jar

# Expose the port that your Spring Boot application runs on
EXPOSE 8080

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "your-spring-boot-app.jar"]
