FROM golang:1.11.2-alpine3.8

RUN apk update && apk add git && apk add ca-certificates yarn