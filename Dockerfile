# Use an official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context (replace 'your-application.jar' with your actual JAR name)
COPY target/apirest-java-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
