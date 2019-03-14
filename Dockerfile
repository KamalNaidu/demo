FROM maven:3.6.0-jdk-8-alpine
ADD target/springbootrocks.jar springbootrocks.jar  
EXPOSE 8088
ENTRYPOINT ["java","-jar","springbootrocks.jar"]
