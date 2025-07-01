FROM n8nio/n8n:latest

USER root

# Add ffmpeg using Alpine's 'apk' package manager
RUN apk update && apk add --no-cache ffmpeg

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
