FROM alpine:latest

ENTRYPOINT ["/usr/bin/ddrescue"]

CMD ["--help"]

WORKDIR /workspace

RUN apk add --no-cache ddrescue

# running as unprivileged user not possible because: reading raw block device generally requires root access
