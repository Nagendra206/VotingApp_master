FROM mediasol/openjdk17-slim-jprofiler
VOLUME /tmp
ADD target/VotingApp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9002
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
