FROM alpine:3.18
RUN apk update --no-check-certificate && apk add --no-cache ca-certificates --no-check-certificate
RUN apk add --no-cache go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
