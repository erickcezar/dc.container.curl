FROM alpine:latest

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

COPY curl.sh /opt/

CMD ["/bin/ash", "/opt/curl.sh"]