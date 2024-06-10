# Usar una imagen base de Java
FROM openjdk:11-jdk-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR de tu aplicación al contenedor
COPY target/proyectofinal-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto en el que se ejecuta tu aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot
ENTRYPOINT ["java","-jar","app.jar"]
