# Dockerfile for DNS utils
# https://packages.debian.org/jessie/dnsutils

FROM debian:jessie

MAINTAINER Wadim Kruse <wadim.kruse@gmail.com>

RUN apt-get update && apt-get install -y dnsutils

# Clean up.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*