# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Szakember kereső webes alkalmazás — szakemberek és megrendelők regisztrálhatnak, munkákat adhatnak fel, üzeneteket küldhetnek és értékeléseket írhatnak.

## Tech Stack

- **Backend**: Spring Boot 3.4.3, Java 21, PostgreSQL, Liquibase, JWT auth
- **Frontend**: Angular 19, Angular Material (M3), SCSS
- **Build**: Multi-module Maven (parent → frontend + backend)
- **IDE**: IntelliJ IDEA

## Build Commands

```bash
# Full build (requires Java 21)
JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home mvn clean package -DskipTests

# Run the app
JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home java -jar backend/target/szaki-backend-0.0.1-SNAPSHOT.jar

# Frontend dev (port 4200, proxies /api to localhost:8080)
cd frontend && npm start
```

## Project Structure

```
szaki/
  pom.xml                          # Parent POM
  backend/
    pom.xml                        # Spring Boot module
    src/main/java/hu/szaki/
      entity/                      # JPA entities
      repository/                  # Spring Data repos
      dto/                         # Request/Response DTOs
      security/                    # JWT filter, token provider
      config/                      # SecurityConfig, exception handler
      service/                     # Business logic
      controller/                  # REST controllers
    src/main/resources/
      application.yml
      db/changelog/                # Liquibase migrations
  frontend/
    pom.xml                        # frontend-maven-plugin
    src/app/
      core/auth/                   # AuthService, guard, interceptor
      core/models/                 # TypeScript interfaces
      features/                    # Feature components (lazy loaded)
      shared/components/           # Navbar, footer
```

## Leírás
Ez egy szakember kereső webes alkalmazás, ahol szakemberek és megrendelők regisztrálhatnak.
A szakember listában megjelennek a szakemberek, ez listázható szűrhető és a megrendelő tud keresni, ha pedig szakember jelentkezik be akkor kereshet a szaktudásával egyező munkák között.
Ha talált a felhasználó megfelelő szakembert vagy munkát, akkor tud neki üzenni. A szakembereket és a megrendelőket is lehet értékelni.
Az értékelésre az értékelt tud válaszolni, ezeket minden bejelentkezett felhasználó láthatja.

Csak magyar nyelv szükséges.
Legyen modern, reszponzív.

PostgreSQL adatbázist használjon.

## Database

- Connection: `jdbc:postgresql://localhost:5432/szaki` (user: szaki, pass: szaki)
- Tables: users, szakember_profil, szakterulet, szakember_szakterulet, munka, munka_szakterulet, beszelgetes, uzenet, ertekeles, ertekeles_valasz

## API Endpoints

- `POST /api/auth/register`, `POST /api/auth/login`, `GET /api/auth/me`
- `GET /api/szakteruletek`
- `GET /api/szakemberek` (public), further CRUD endpoints TBD
- Swagger: `/swagger-ui.html`
