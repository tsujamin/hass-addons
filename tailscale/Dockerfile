ARG BUILD_ARCH
FROM homeassistant/${BUILD_ARCH}-base-debian:latest

ARG BUILD_ARCH
ARG TAILSCALE_VERSION="1.12.3"

ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install -y wget iptables

# Download and install tailscale to /bin from https://pkgs.tailscale.com/stable/#static
COPY install.sh /
RUN chmod a+x /install.sh
RUN /install.sh $BUILD_ARCH $TAILSCALE_VERSION

COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
