FROM openjdk
WORKDIR /app
COPY target/*.jar /app/
EXPOSE 8081
ENTRYPOINT ["java","-jar","spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]