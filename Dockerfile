# Use an official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Build the application (assuming Maven is used)
RUN ./mvnw clean package

# Copy the built JAR file to the container
COPY target/apirest-java-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
