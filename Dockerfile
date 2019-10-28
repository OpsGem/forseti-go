FROM golang:latest

WORKDIR /workspace
USER root

ENV app myapp
ENV workspace /workspace
ENV artifacts /artifacts

# linux darwin windows freebsd
ENV _GOOS "darwin linux"

# and64 386 arm mips...
ENV _GOARCH "amd64"

RUN mkdir -p /app /artifacts /workspace
COPY builder.sh /app/builder.sh
RUN chmod a+x /app/builder.sh

CMD ["/app/builder.sh"]
