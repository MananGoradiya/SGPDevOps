FROM openjdk:8
EXPOSE 8080
ADD target/FIRST-APP.jar FIRST-APP.jar
ENTRYPOINT ["java","-jar","/FIRST-APP.jar"]