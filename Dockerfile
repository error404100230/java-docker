FROM gradle:6.7-jdk8 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY . /workspace
RUN gradle build

FROM docker.io/library/openjdk:8-jdk-alpine
COPY ./build/libs/nasapicture-0.0.1-SNAPSHOT.war /var/java-mp/
WORKDIR  /var/java-mp/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "nasapicture-0.0.1-SNAPSHOT.war"]
