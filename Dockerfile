FROM java:8
WORKDIR /SpringBootHelloWorld
COPY /target/SpringBootHelloWorld-0.0.1-SNAPSHOT.jar /SpringBootHelloWorld.jar 
CMD ["java", "-jar", "/SpringBootHelloWorld.jar"]