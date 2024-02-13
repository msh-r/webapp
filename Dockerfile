FROM ubuntu:latest
RUN sudo apt-get install java -y
RUN mkdir /home/ubuntu/tomcat
WORKDIR /home/ubuntu/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz.asc .
RUN tar -xvzf apache-tomcat-9.0.85.tar.gz.asc .
RUN mv apache-tomcat-9.0.85/* /home/ubuntu/tomcat
EXPOSE 8090
COPY ./WebApp.war /home/ubuntu/tomcat
CMD ["/home/ubuntu/tomcat/bin/catalina.sh", "run"]
