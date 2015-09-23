# vim:set ft=dockerfile:
FROM phusion/baseimage
MAINTAINER Tom Coonen <tom@creacoon.nl>

CMD ["/sbin/my_init"]

RUN mkdir -p /data
VOLUME ["/data"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["true"]
