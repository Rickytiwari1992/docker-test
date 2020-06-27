FROM alpine/git
WORKDIR /SpringBootHelloWorld
RUN git clone https://github.com/rickytiwari1992/docker-test.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /SpringBootHelloWorld
COPY --from=0 /SpringBootHelloWorld /SpringBootHelloWorld 
RUN mvn install 

FROM openjdk:8-jre-alpine
WORKDIR /SpringBootHelloWorld
COPY --from=1 /SpringBootHelloWorld/target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar /SpringBootHelloWorld.jar 
CMD ["java -jar SpringBootHelloWorld.jar"]