# STABLE ALPINE BUILD
# https://hub.docker.com/r/glennigen/lavalink:latest-alpine
FROM alpine:latest
WORKDIR /app
#
ARG USERNAME=lavalink
ARG USER_UID=1000
#
#Create user defined by $USERNAME
RUN adduser -u $USER_UID -D $USERNAME
    #
    # Updating and installing requirements for Lavalink
RUN apk update
RUN apk upgrade --no-cache
RUN apk add openjdk21-jdk libgcc su-exec
#RUN chown $USERNAME:$USERNAME /app/ -R
RUN chown $USERNAME:users /app
#RUN chmod a+rw /app -R
RUN chmod a+rw /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

#Run entrypoint script then java command
ENTRYPOINT [ "/usr/local/bin/entrypoint.sh" ]
CMD ["java", "-jar", "/app/Lavalink.jar"]
