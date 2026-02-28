FROM eclipse-temurin:21-jdk AS build
WORKDIR /app

COPY pom.xml .
COPY backend/pom.xml backend/
COPY frontend/pom.xml frontend/

# Frontend sources
COPY frontend/angular.json frontend/tsconfig*.json frontend/package*.json frontend/
COPY frontend/src frontend/src
COPY frontend/public frontend/public
COPY frontend/proxy.conf.json frontend/

# Backend sources
COPY backend/src backend/src

RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
RUN mvn clean package -DskipTests -q

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/backend/target/szaki-backend-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
