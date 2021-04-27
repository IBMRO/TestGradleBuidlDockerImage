FROM openjdk:8-jdk-alpine
VOLUME /tmp

# The application's jar file
ARG JAR_FILE=build/libs/TestGradleBuidlDockerImage-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} application.jar

# All Spring Boot components expose 8080 as the container port
EXPOSE 8080

# All Spring Boot components expose 8000 as the container java debug port
EXPOSE 8000

# Start the Spring Boot fat JAR with the given JAVA_OPTS
CMD ["java", "-jar", "/application.jar"]