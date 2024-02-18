FROM openjdk:latest

WORKDIR /usr/src/app

COPY ./src/main/java .

RUN javac -sourcepath . -d out ./org/example/task1/Program.java

WORKDIR /usr/src/app/out

#CMD java -classpath . org.example.task1.Program

ENTRYPOINT ["java", "org.example.task1.Program"]