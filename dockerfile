# STABLE ALPINE BUILD
# https://hub.docker.com/r/glennigen/lavalink:latest-alpine
FROM alpine:latest
WORKDIR /app
#
ARG USERNAME=lavalink
ARG USER_UID=1000
#
#Create user defined by $USERNAME
RUN adduser -u $USER_UID -D $USERNAME \
    #
    # Updating and installing requirements for Lavalink
    && apk update \
    && apk upgrade --no-cache \
    && apk add openjdk21-jdk libgcc \
    && chown $USERNAME:$USERNAME /app/ -R \
    && chmod a+rw /app -R
USER lavalink
ENTRYPOINT [ "java","-jar","/app/Lavalink.jar","--spring.config.location=/app/application.yml" ]