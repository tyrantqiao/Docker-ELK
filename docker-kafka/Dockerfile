FROM openjdk:8u151-jre-alpine
WORKDIR /opt

ENV KAFKA_VERSION 1.1.0
ENV KAFKA_HOME /opt/kafka-"$KAFKA_VERSION"-src

MAINTAINER tyrantqiao


USER root
RUN wget https://mirrors.shuosc.org/apache/kafka/"$KAFKA_VERSION"/kafka-"$KAFKA_VERSION"-src.tgz -O /tmp/kafka-"$KAFKA_VERSION"-src.tgz &&   \
    tar xfz /tmp/kafka-"$KAFKA_VERSION"-src.tgz -C /opt &&  \
    rm /tmp/kafka-"$KAFKA_VERSION"-src.tgz 

ADD scripts/start-kafka.sh /usr/bin/start-kafka.sh
RUN chmod +x /usr/bin/start-kafka.sh

EXPOSE 9092 9093 9094 2181

ENTRYPOINT ["/usr/bin/start-kafka.sh"]
