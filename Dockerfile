FROM golang:1.18-alpine

WORKDIR /app

COPY go.mod ./
COPY *.go ./
COPY static ./static

RUN go build -o /AdSis-CI-CD

EXPOSE 3000

CMD ["/AdSis-CI-CD"]
