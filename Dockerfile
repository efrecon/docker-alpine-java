FROM alpine
MAINTAINER Emmanuel Frecon <efrecon@gmail.com>

RUN mkdir /opt && \
  apk add --update-cache openjdk7 && \
  rm -rf /var/cache/apk/*

ENV PATH /usr/lib/jvm/java-1.7-openjdk/bin:$PATH
VOLUME /opt
ENTRYPOINT ["java"]
