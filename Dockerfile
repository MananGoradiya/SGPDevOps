FROM openjdk:25
EXPOSE 8080
ADD target/FIRST-APP.jar FIRST-APP.jar
ENTRYPOINT ["java","-jar","/FIRST-APP.jar"]