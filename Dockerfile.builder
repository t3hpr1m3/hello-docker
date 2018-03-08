FROM golang:alpine

ADD hello-docker.go /go/src

RUN cd /go/src && go build -o hello-docker
