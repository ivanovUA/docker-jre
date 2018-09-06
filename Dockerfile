FROM alpine:latest
MAINTAINER ivanov.ua@ukr.net
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
RUN apk upgrade --update-cache && \
    apk add openjdk8-jre && \
    rm -rf /tmp/* /var/cache/apk/*
CMD ["java", "-version"]
