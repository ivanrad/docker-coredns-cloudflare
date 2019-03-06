[![Automated Status](https://img.shields.io/docker/cloud/automated/ivanrad/coredns-cloudflare.svg)](https://hub.docker.com/r/ivanrad/coredns-cloudflare)
[![Build Status](https://img.shields.io/docker/cloud/build/ivanrad/coredns-cloudflare.svg)](https://hub.docker.com/r/ivanrad/coredns-cloudflare)
# docker-coredns-cloudflare

[CoreDNS][coredns-url] in a docker container setup to proxy DNS requests to
[Cloudflare public DNS][cloudflare-dns] using DNS-over-TLS.

## Example

    docker run -p 127.0.0.1:53:53 -p 127.0.0.1:53:53/udp ivanrad/coredns-cloudflare:latest

[coredns-url]: https://coredns.io
[cloudflare-dns]: https://1.1.1.1/
