FROM ubuntu:trusty

MAINTAINER pm

RUN apt-get install -y unzip 
RUN apt-get install -y python 
RUN apt-get install -y wget

RUN wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -O awscli-bundle.zip && \
    unzip awscli-bundle.zip && \
    awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

