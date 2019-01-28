FROM ubuntu:16.04

RUN apt-get update &&             \
    apt-get install -y            \
        --no-install-recommends   \
        shutter                   \
        libgoo-canvas-perl        \
        libgtk2-appindicator-perl \
        libimage-exiftool-perl && \
    rm -rf /var/lib/apt/lists/*

CMD shutter
