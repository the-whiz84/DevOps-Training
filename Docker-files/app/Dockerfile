FROM maven:3.9.9-eclipse-temurin-21-jammy AS build_image
RUN git clone https://github.com/the-whiz84/DevOps-Training.git
RUN cd DevOps-Training && git checkout containers && mvn install

FROM tomcat:10-jdk21
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build_image DevOps-Training/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
