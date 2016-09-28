FROM nubomedia/apps-baseimage:v1

MAINTAINER Nubomedia

RUN mkdir /tmp/ouatnbmservice

ADD ouatnbmservice-0.0.1-SNAPSHOT.jar /tmp/ouatnbmservice/
ADD desarrollo2.jks /

EXPOSE 443 8888

ENV DISPLAY=:0

ENTRYPOINT java -Denv=dev -jar /tmp/ouatnbmservice/ouatnbmservice-0.0.1-SNAPSHOT.jar
