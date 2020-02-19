FROM maven:3-alpine

COPY pom.xml application/

COPY src/ application/src/

WORKDIR application/

RUN mvn clean install

EXPOSE 8090

ENTRYPOINT [ "java", "-jar", "/application/target/jenkins-pipeline.jar"]
