FROM openjdk:8u181
ADD target/docker-example-0.0.1-SNAPSHOT.jar /opt/docker-example-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/opt/docker-example-0.0.1-SNAPSHOT.jar"]
