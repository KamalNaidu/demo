FROM openjdk:8
ADD target/springbootrocks.jar springbootrocks.jar  
EXPOSE 8088
ENTRYPOINT ["java","-jar","springbootrocks.jar"]
