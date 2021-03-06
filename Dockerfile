FROM alpine:latest as build
RUN apk add --no-cache ca-certificates

FROM scratch
LABEL maintainer="skandyla@gmail.com"
COPY go-websocket-echo-server /go-websocket-echo-server
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build /etc/passwd /etc/passwd
ENV PORT 8080
EXPOSE 8080
USER nobody
ENTRYPOINT ["/go-websocket-echo-server"]
