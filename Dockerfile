FROM alpine:3.16.2
#FROM alpine:latest

RUN apk add --no-cache \
        tigervnc \
        xfce4 && \
    adduser -D web

USER web
COPY config /home/web/.vnc/config

ENTRYPOINT vncserver :0
