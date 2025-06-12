FROM openjdk:17-slim
 
WORKDIR /app
 
COPY . .
 
RUN ./mvnw clean install -DskipTests
 
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
