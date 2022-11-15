# build
FROM maven:3-openjdk-17-slim as builder

COPY pom.xml /usr/src/app/
COPY src /usr/src/app/src

WORKDIR /usr/src/app/
RUN mvn clean package

#Create final image
FROM openjdk:17-jdk-oracle
COPY --from=builder /usr/src/app/target/*.jar /usr/bin/demo.jar

EXPOSE 8080

CMD java -jar /usr/bin/demo.jar