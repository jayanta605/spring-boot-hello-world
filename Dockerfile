# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8084

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
