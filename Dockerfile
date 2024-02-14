FROM ubuntu:latest
# Download and install OpenJDK
RUN apt-get update \
    && apt-get install -y openjdk-11-jdk
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz .
RUN tar -xzf apache-tomcat-9.0.85.tar.gz -C /opt/tomcat --strip-components=1
#RUN tar -xvzf apache-tomcat-9.0.85.tar.gz /opt/tomcat
#RUN mv apache-tomcat-9.0.85/* /opt/tomcat
EXPOSE 8080
COPY ./WebApp.war /opt/tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
