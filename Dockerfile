FROM maven:3.6.0-jdk-8-alpine
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package
ADD /usr/src/app/target/springbootrocks.jar springbootrocks.jar  
EXPOSE 8088
ENTRYPOINT ["java","-jar","springbootrocks.jar"]
