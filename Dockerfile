FROM maven:3.8.7-eclipse-temurin-17-alpine
WORKDIR /app
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
# Copy the project source
COPY src ./src
# Packaging
RUN mvn install
CMD ["java","-jar","/app/target/HMIS-0.0.1-SNAPSHOT.jar"]