# Dockerfile for DNS Utils
# https://packages.debian.org/jessie/dnsutils

FROM debian:jessie

MAINTAINER Wadim Kruse <wadim.kruse@gmail.com>

RUN apt-get update && apt-get install -y dnsutils

RUN apt-get update && apt-get install -y --no-install-recommends dnsutils parallel pv vim

# Clean up.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
