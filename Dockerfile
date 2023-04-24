FROM openjdk:17.0.2
EXPOSE 8080
ADD target/FIRST-APP.jar FIRST-APP.jar
ENTRYPOINT ["java","-jar","/FIRST-APP.jar"]