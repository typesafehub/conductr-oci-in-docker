FROM alpine:3.5
MAINTAINER info@lightbend.com
USER root
RUN apk --no-cache add --update bash coreutils
