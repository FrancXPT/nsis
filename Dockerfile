FROM debian:stable
LABEL org.opencontainers.image.authors="Support@bbamoula.ga"
LABEL org.opencontainers.image.source = &quot;https://github.com/FrancXPT/nsis&quot;

RUN apt-get update -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y nsis \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /build

ENTRYPOINT [ "makensis", "-V4" ]
