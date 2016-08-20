FROM lsiobase/alpine.python
MAINTAINER smdion <me@seandion.com>

# add local files
COPY root/ /

# ports and volumes
VOLUME /config /plex
EXPOSE 80
