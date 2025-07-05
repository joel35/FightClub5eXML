FROM alpine:latest

RUN apk update && \
    apk add --no-cache libxslt libxml2-utils bash
