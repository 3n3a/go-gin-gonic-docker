FROM golang:1.17-alpine

# See https://stackoverflow.com/questions/59471545/when-trying-to-build-docker-image-i-get-gcc-executable-file-not-found-in-p
RUN apk add build-base

WORKDIR /install

COPY go.mod ./
COPY go.sum ./
RUN go mod download