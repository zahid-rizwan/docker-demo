# Use an official OpenJDK runtime as the base image
FROM openjdk:23-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your project into the container
COPY target/first-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"]