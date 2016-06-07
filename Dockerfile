FROM golang:alpine
RUN apk --update add postgresql-client git musl-dev && rm -rf /var/cache/apk/*
RUN go get bitbucket.org/liamstask/goose/cmd/goose
RUN apk del git musl-dev && rm -rf /var/cache/apk/*

