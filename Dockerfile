FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y apt-transport-https ca-certificates software-properties-common wget maven jq 

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get update -y
RUN apt-get install -y adoptopenjdk-11-hotspot

WORKDIR /root/app
ADD app.jar app.jar
CMD /usr/bin/java -jar app.jar
