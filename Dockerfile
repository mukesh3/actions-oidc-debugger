FROM alpine:3.18
RUN apk update && apk add --no-cache ca-certificates
RUN apk add --no-cache go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
