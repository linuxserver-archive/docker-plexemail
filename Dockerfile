FROM lsiobase/alpine.python
MAINTAINER smdion <me@seandion.com>

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# add local files
COPY root/ /

# ports and volumes
VOLUME /config /plex
EXPOSE 8080
