FROM golang

WORKDIR /app/

COPY . .

RUN go mod download
#go run server.go
RUN go build -o server .
RUN chmod +x server
CMD ["./server"]
