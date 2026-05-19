# Use a base image with Java installed
FROM eclipse-temurin:21-jdk-jammy

# Set the working directory inside the container
WORKDIR /app

# Copy the built Spring Boot JAR file into the container
# Replace 'your-application.jar' with the actual name of your JAR file
COPY target/mms-service.jar /app/app.jar

# Expose the port your Spring Boot application listens on (default is 8080)
EXPOSE 9090

# Define the command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]