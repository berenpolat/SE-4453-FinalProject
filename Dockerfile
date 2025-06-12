FROM openjdk:17-slim
WORKDIR /app

COPY . .

RUN chmod +x mvnw

RUN ./mvnw clean install -DskipTests

# DEBUG
CMD echo "DEBUG $#$ Port: $PORT..." && java -Dserver.port=$PORT -jar target/demo-0.0.1-SNAPSHOT.jar
