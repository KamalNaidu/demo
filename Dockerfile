FROM maven:3.6.0-jdk-8-alpine as build
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/target/springbootrocks.jar /usr/app/springbootrocks.jar  
EXPOSE 8088
ENTRYPOINT ["java","-jar","/usr/app/springbootrocks.jar"] 
