FROM golang:alpine AS build-env

ADD hello-docker.go /go/src

RUN cd /go/src && go build -o hello-docker

FROM scratch

WORKDIR /app

COPY --from=build-env /go/src/hello-docker /app/

ENTRYPOINT ["/app/hello-docker"]
