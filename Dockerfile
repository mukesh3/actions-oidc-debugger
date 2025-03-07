FROM alpine:3.18

# Use a different mirror
RUN sed -i 's/dl-cdn.alpinelinux.org/dl-4.alpinelinux.org/g' /etc/apk/repositories

# Update CA certificates
RUN apk update --no-cache && apk add --no-cache ca-certificates
RUN apk add --no-cache go

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
