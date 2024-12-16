# Usa una imagen base con JDK
FROM openjdk:17-jdk-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido del proyecto
COPY src /app/src

# Compila los archivos .java
RUN javac -d build $(find src -name "*.java")

# Empaqueta las clases compiladas en un JAR manualmente
RUN jar cfe app.jar apirest.Application -C build .

# Expone el puerto
EXPOSE 8080

# Ejecuta el JAR al iniciar el contenedor
CMD ["java", "-jar", "app.jar"]
