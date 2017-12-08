FROM alpine:latest as build
RUN  apk add --no-cache ca-certificates

FROM scratch
LABEL maintainer="skandyla@gmail.com"
COPY go-websocket-echo-server /go-websocket-echo-server
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENV PORT 8080
EXPOSE 8080
ENTRYPOINT ["/go-websocket-echo-server"]
