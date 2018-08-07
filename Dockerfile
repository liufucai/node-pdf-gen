FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install wget
