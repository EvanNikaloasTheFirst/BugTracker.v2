FROM openjdk:latest AS builder 
#TODO: change latest to same version as project
COPY backend/ /backend/ 
# TODO: change backend to the name of application folder

WORKDIR /backend/
RUN mvn clean package -DskipTests

FROM openjdk:latest
COPY --from=builder backend/target/example.jar app.jar 
#TODO: change example.jar to application name

CMD ["java", "-jar", "app.jar"]
