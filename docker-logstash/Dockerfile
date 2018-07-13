FROM docker.elastic.co/logstash/logstash:6.3.0

MAINTAINER tyrantqiao


COPY ./logstash.conf /usr/share/logstash/pipeline/logstash.conf
ADD ./pipeline/ /usr/share/logstash/pipeline/
ADD ./config/ /usr/share/logstash/config/
