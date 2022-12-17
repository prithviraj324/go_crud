FROM golang:1.19.4-alpine3.17
RUN mkdir /app
ADD . /app
WORKDIR /app             
RUN go build -o server .
CMD ["/app/server"]