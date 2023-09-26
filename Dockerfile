FROM golang:latest as builder

COPY src /go/src

RUN go build src/hello.go

FROM scratch
COPY --from=builder /go .
CMD [ "./hello" ]