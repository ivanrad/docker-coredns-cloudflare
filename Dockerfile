FROM alpine:latest

WORKDIR /app

ARG COREDNS_VERSION
ENV COREDNS_VERSION ${COREDNS_VERSION:-1.3.1}

RUN set -e -o pipefail && \
    apk add --no-cache --virtual deps curl && \
    apk add --no-cache openssl ca-certificates && \
    curl -sSlL https://github.com/coredns/coredns/releases/download/\
v${COREDNS_VERSION}/coredns_${COREDNS_VERSION}_linux_amd64.tgz | \
    tar -xzf - && \
    apk del deps && \
    update-ca-certificates

COPY Corefile /app

EXPOSE 53 53/udp

ENTRYPOINT ["/app/coredns"]
CMD ["-conf", "/app/Corefile"]
