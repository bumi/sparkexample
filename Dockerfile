FROM java:8

RUN apt-get update
RUN apt-get install -y maven

ADD . /code

WORKDIR /code

RUN ["mvn", "compile"]

RUN ["mvn", "install"]

CMD ["java", "-cp", "target/myapp-1.0-SNAPSHOT.jar", "HelloSpark"]