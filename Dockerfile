FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY target/${JAR_FILE} configuration-server.jar
ENTRYPOINT java -Djava.security.egd=file:/dev/./urandom -jar /configuration-server.jar \
