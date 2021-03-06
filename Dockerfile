FROM openjdk:8

COPY . /usr/src/app
WORKDIR /usr/src/app/src
RUN javac Main.java

EXPOSE 9010

CMD ["java", \
  "-Dcom.sun.management.jmxremote", \
  "-Dcom.sun.management.jmxremote.port=9010", \
  "-Dcom.sun.management.jmxremote.rmi.port=9010", \
  "-Dcom.sun.management.jmxremote.local.only=false", \
  "-Dcom.sun.management.jmxremote.authenticate=false", \
  "-Dcom.sun.management.jmxremote.ssl=false", \
  "-Djava.rmi.server.hostname=localhost", \
  "Main"]
