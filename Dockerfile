FROM maven:3-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build target/*.war login.war
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "login.war"]
