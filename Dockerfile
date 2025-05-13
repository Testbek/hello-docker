FROM golang:1.22.0

WORKDIR /app

COPY . .

RUN go build -o app main.go parcel.go

COPY tracker.db .

EXPOSE 8080
#hi index
CMD ["./app"]
