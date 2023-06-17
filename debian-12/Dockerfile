################################
# Dockerfile: nubes/ttf-mscorefonts-debian:12

# Base
FROM debian:12

RUN [ "/bin/sed", "-i", "-e", "s/ main$/ main contrib/", "/etc/apt/sources.list.d/debian.sources" ]

################################
# Dockerfile.common

# Maintainer
LABEL org.opencontainers.image.authors="Gravitates Gaudiales <gaudiales@gmail.com>"

# Update
RUN date --iso-8601=ns\
 && apt-get update\
 && apt-get -y upgrade\
 && echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections \
 && DEBIAN_FRONTEND=noninteractive\
    apt-get -y install\
	ttf-mscorefonts-installer\
 && apt-get clean \
 && date --iso-8601=ns

# End
