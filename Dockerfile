FROM golang:1.13-alpine as build
ENV GO111MODULE=on
ENV CGO_ENABLED=0
ENV GOOS=linux

RUN apk add --no-cache make git

WORKDIR /go/src/github.com/s4mu3lbk/arifpay-auth
COPY . /go/src/github.com/s4mu3lbk/arifpay-auth

RUN make deps build


FROM alpine:3.7
RUN adduser -D -u 1000 netlify

RUN apk add --no-cache ca-certificates
COPY --from=build /go/src/github.com/s4mu3lbk/arifpay-auth/gotrue /usr/local/bin/gotrue
COPY --from=build /go/src/github.com/s4mu3lbk/arifpay-auth/migrations /usr/local/etc/gotrue/migrations/

ENV GOTRUE_DB_MIGRATIONS_PATH /usr/local/etc/gotrue/migrations

USER netlify
CMD ["gotrue"]
