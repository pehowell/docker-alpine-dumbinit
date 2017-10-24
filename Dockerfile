FROM alpine:latest
LABEL maintainer="Paul Howell <paul.howell+docker@gmail.com>"

RUN set -euxo pipefail && \
    apk add --no-cache python3 gcc musl-dev && \
    pip3 install --upgrade setuptools wheel && \
    pip3 install dumb-init && \
    apk del gcc musl-dev python3

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
