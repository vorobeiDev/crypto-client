FROM golang:1.20-alpine
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o main ./cmd/main.go
EXPOSE 5000
CMD ["./main"]