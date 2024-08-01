# STABLE ALPINE BUILD
# https://hub.docker.com/r/glennigen/lavalink:latest-alpine
FROM alpine:latest
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
    && mkdir /app \
    && chown $USERNAME:$USERNAME /app

#ENTRYPOINT [ "/bin/sh","java -jar /app/Lavalink.jar" ]
ENTRYPOINT [ "java","-jar","/app/Lavalink.jar" ]