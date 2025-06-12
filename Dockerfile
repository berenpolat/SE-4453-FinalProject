FROM openjdk:17-slim
WORKDIR /app

COPY . .

# 🛠 mvnw dosyasını çalıştırılabilir yap
RUN chmod +x mvnw

RUN ./mvnw clean install -DskipTests

CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
