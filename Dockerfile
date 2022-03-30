FROM golang:1.17-alpine

WORKDIR /install

COPY go.mod ./
COPY go.sum ./
RUN go mod download