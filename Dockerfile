FROM nubomedia/apps-baseimage:src

MAINTAINER Nubomedia

RUN mkdir /tmp/ouatnbmservice

ADD ouatnbmservice-0.0.1-SNAPSHOT.jar /tmp/ouatnbmservice/
ADD desarrollo2.jks /

EXPOSE 8888 8443 443

ENTRYPOINT java -Denv=dev -jar /tmp/ouatnbmservice/ouatnbmservice-0.0.1-SNAPSHOT.jar
