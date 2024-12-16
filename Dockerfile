# Use the official OpenJDK 17 image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build artifact (JAR file) into the container
# Replace 'apirest-java-0.0.1-SNAPSHOT.jar' with the actual name of your JAR file
COPY target/apirest-java-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Set the command to run the application
CMD ["java", "-jar", "app.jar"]
