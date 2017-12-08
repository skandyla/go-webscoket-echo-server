# go-websocket-echo-server
============

[![Build Status](https://travis-ci.org/skandyla/go-websocket-echo-server.svg?branch=master)](https://travis-ci.org/skandyla/go-websocket-echo-server)

A very simple HTTP echo server with support for web-sockets for debugging purposes.

Repository name in Docker Hub: **[skandyla/go-websocket-echo-server](https://hub.docker.com/r/skandyla/go-websocket-echo-server/)**
Published via **automated build** mechanism


### Features:
- Any messages sent from a web-socket client are echoed.
- Visit `/.ws` for a basic UI to connect and send web-socket messages.
- Requests to any other URL will return the request headers and body.
- The `PORT` environment variable sets the server port.
- No TLS support yet :(

To run as a container:

```
docker run -P skandyla/go-websocket-echo-server
```


Inspired by https://github.com/jmalloc/echo-server
