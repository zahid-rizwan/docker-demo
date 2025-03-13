# Use Amazon Corretto 23 to build the project
FROM amazoncorretto:23 AS build
WORKDIR /app

# Install tar and gzip (required by ./mvnw)
RUN yum install -y tar gzip

# Copy the project files
COPY . .

# Add execute permissions to the mvnw script
RUN chmod +x ./mvnw

# Build the project
RUN ./mvnw clean package

# Use Amazon Corretto 23 to run the application
FROM amazoncorretto:23
WORKDIR /app
COPY --from=build /app/target/first-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]