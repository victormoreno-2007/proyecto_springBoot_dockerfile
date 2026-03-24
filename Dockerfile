# ETAPA 1: Construcción
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# ETAPA 2: Ejecución
FROM openjdk:17-jdk-slim
WORKDIR /app
# Aquí está el nombre corregido
COPY --from=build /app/target/security-app-1.0.0-SNAPSHOT.jar app.jar

# Hugging Face Spaces usa el puerto 7860 por defecto
EXPOSE 7860
ENTRYPOINT ["java", "-Dserver.port=7860", "-jar", "app.jar"]