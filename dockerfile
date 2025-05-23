FROM openjdk:21-jdk

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh