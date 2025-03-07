FROM alpine:3.21.1
RUN apk add --no-cache go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
