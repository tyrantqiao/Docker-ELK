FROM openjdk:8u151-jre-alpine

ARG kafka_version=1.1.0
ARG glibc_version=2.27

MAINTAINER wurstmeister_tyrantqiao

ENV KAFKA_VERSION=$kafka_version \
    GLIBC_VERSION=$glibc_version \
    KAFKA_HOME=/opt/kafka

ENV PATH=${PATH}:${KAFKA_HOME}/bin

RUN apk add --no-cache bash curl jq docker \
&& mkdir /opt \
&& wget http://www-eu.apache.org/dist/kafka/1.1.0/kafka-1.1.0-src.tgz /tmp/kafka-1.1.0-src.tgz \
&& tar xfz /tmp/kafka-${KAFKA_VERSION}-src.tgz -C /opt \
&& ln -s /opt/kafka-${KAFKA_VERSION} /opt/kafka \
&& chmod a+x /opt/kafka/*.sh \
&& mv /opt/kafka/*.sh /usr/bin \
&& rm /tmp/* \
&& wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk \
&& apk add --no-cache --allow-untrusted glibc-${GLIBC_VERSION}.apk \
&& rm glibc-${GLIBC_VERSION}.apk

COPY overrides /opt/overrides

VOLUME ["/kakfa"]

CMD ["start-kafka.sh"]
