# Use Ubuntu 20.04 as base image
FROM ubuntu:20.04

# Maintainer information
LABEL maintainer="hramim389@gmail.com"

# Install prerequisites
RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless && \
    apt-get clean
RUN apt-get install -y wget
# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Create tomcat directory
WORKDIR /usr/local
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz && \
    tar -xzvf apache-tomcat-9.0.85.tar.gz && \
    mv apache-tomcat-9.0.85 tomcat && \
    rm apache-tomcat-9.0.85.tar.gz

# Expose default tomcat port
EXPOSE 8080

# Start tomcat
CMD ["catalina.sh", "run"]
