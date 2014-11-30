FROM debian:7.5
MAINTAINER Benoît Vidis

RUN apt-get update -y
RUN apt-get install -y libfreetype6-dev libfontconfig1-dev wget bzip2

RUN wget --no-check-certificate https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN tar xvf phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN mv phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin/
RUN rm -rf phantom*

RUN mkdir -p /phantomjs
WORKDIR /phantomjs

ENTRYPOINT ["phantomjs"]
