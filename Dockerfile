FROM maven:3.6.3-openjdk-17
RUN mkdir docker_education
WORKDIR docker_education
COPY . .
RUN mvn install
CMD ["java", "-jar", "target/main.jar"]