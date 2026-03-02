# Dockerfile pour Spring Boot avec Java 17

# 1️⃣ Image de base stable pour Java 17
FROM eclipse-temurin:17-jdk

# 2️⃣ Définir le répertoire de travail dans le conteneur
WORKDIR /app

# 3️⃣ Copier le JAR généré par Maven dans le conteneur
COPY target/dockerdemo-0.0.1-SNAPSHOT.jar docker-demo.jar

# 4️⃣ Exposer le port 8080 (celui utilisé par Spring Boot)
EXPOSE 8080

# 5️⃣ Commande pour lancer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/app/docker-demo.jar"]
