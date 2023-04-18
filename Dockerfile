FROM ghcr.io/hiway-media/handbrake-nvenc-docker-v2:HB1.6
LABEL org.opencontainers.image.authors="allan.nava@hiway.media"
#
RUN apt update
RUN apt-get install -y imagemagick
#
CMD ["/bin/bash"]
#