FROM java:8

RUN apt-get update
RUN apt-get install -y maven

ADD . /code

WORKDIR /code

RUN ["mvn", "clean", "install"]

EXPOSE 4567

CMD ["java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]