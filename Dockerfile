FROM alpine:3.18

RUN apk add --no-cache --no-check-certificate go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
