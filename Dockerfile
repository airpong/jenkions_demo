FROM openjdk:17-jdk
LABEL maintainer="giponge@gmail.com"
ARG JAR_FILE=build/libs/jenkins_demo-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} docker-springboot.jar
ENTRYPOINT ["java", "-jar","/docker-springboot.jar"]