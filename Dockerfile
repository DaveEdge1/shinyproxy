FROM openjdk:8-jre
RUN mkdir -p /opt/shinyproxy/
COPY /target/shinyproxy-2.6.1.jar /opt/shinyproxy/shinyproxy.jar
COPY application.yml /opt/shinyproxy/application.yml
WORKDIR /opt/shinyproxy/
CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
