# Usa una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR desde tu máquina al contenedor
# Asegúrate de que este archivo exista en la raíz de tu proyecto
COPY apirest-java.jar app.jar

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]
