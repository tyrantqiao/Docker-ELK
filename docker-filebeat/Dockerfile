FROM docker.elastic.co/beats/filebeat:6.3.0

MAINTAINER tyrantqiao

COPY ./filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown filebeat /usr/share/filebeat/filebeat.yml
USER filebeat
