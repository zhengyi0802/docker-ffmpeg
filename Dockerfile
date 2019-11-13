FROM ubuntu:18.04
MAINTAINER Chevy Lin

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install ffmpeg x264 -y

RUN groupadd -g 1000 puser
RUN useradd -g 1000 -u 1000 puser
RUN mkdir /home/puser
RUN chown -R puser:puser /home/puser

USER puser


