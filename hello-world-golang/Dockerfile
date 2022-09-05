FROM golang:1.18-alpine3.15
WORKDIR /usr/src/app

COPY . .
# RUN go build -v -o /usr/local/bin/app ./...
EXPOSE 3002
CMD ["go","run","app.go"]