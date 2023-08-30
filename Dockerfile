FROM ubuntu:20.04
RUN apt-get update && apt-get install -y openjdk-17-jdk
VOLUME /tmp
ADD target/VotingApp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9002
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
