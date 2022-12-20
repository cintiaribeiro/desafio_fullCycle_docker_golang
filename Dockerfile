FROM golang:alpine as builder

WORKDIR /go/src/app

COPY . .

RUN CGO_ENABLED=0 go build -o /app main.go

CMD ["/app"]