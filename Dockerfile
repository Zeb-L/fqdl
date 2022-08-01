FROM alpine:latest

ADD in.sh /opt/in.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/in.sh

ENTRYPOINT ["sh", "-c", "/opt/in.sh"]
