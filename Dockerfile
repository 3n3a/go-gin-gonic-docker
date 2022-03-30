FROM golang:1.17-alpine

COPY go.mod ./
COPY go.sum ./
RUN go mod download