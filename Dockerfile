
FROM golang:1.20

WORKDIR /app

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /go-api-mongo

ENTRYPOINT ["/go-api-mongo"]

EXPOSE 9080

CMD ["./main"]
