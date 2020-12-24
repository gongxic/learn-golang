FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR /src
COPY . /src
RUN go build .

EXPOSE 8084
ENTRYPOINT ["./go-gin-example"]
