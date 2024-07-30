FROM openjdk:8-jdk-alpine
COPY hello_world.java /app/hello_world.java
WORKDIR /app
RUN javac hello_world.java
CMD ["java", "hello_world"]
