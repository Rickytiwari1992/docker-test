FROM alpine/git
WORKDIR /SpringBootHelloWorld
RUN git clone https://github.com/rickytiwari1992/docker-test.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /SpringBootHelloWorld
COPY pom.xml /SpringBootHelloWorld
COPY src /SpringBootHelloWorld/src 
RUN mvn install 

FROM openjdk:8-jre-alpine
WORKDIR /SpringBootHelloWorld
COPY --from=maven-build /SpringBootHelloWorld/target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar /usr/local/SpringBootHelloWorld.jar
EXPOSE 8085 
CMD ["java", "-jar", "SpringBootHelloWorld.jar"]