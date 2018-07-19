FROM alpine:3.7
RUN apk update
RUN apk --no-cache add ca-certificates curl

WORKDIR /

ENTRYPOINT ["/bin/sh"]
