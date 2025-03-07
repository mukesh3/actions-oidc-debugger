FROM alpine:3.18
RUN apk add --no-cache go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
