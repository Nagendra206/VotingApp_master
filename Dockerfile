FROM mediasol/openjdk17-slim-jprofiler

# Install MySQL client
RUN apt-get update && apt-get install -y mysql-client

# Set environment variables for MySQL connection
ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USER=root
ENV DB_PASS=password

# Copy application JAR file
VOLUME /tmp
ADD target/VotingApp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9002

# Start the application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
