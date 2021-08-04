FROM golang:alpine as build

ENV GO111MODULE on
ENV GOPROXY https://goproxy.cn,direct

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 8084
CMD ["app"]

