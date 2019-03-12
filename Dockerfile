FROM maven:3.6.0-jdk-8-alpine
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/target/helloworld-1.0.0-SNAPSHOT.jar /usr/app/*.jar  
EXPOSE 8088
ENTRYPOINT ["java","-jar","/usr/app/*.jar"] 
