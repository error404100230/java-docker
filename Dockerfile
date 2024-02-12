FROM docker.io/library/openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/my-application.jar .
EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "my-application.jar"]
