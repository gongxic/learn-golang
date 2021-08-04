FROM golang:latest-alpine

ENV GO111MODULE on
ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/learngolang
COPY . $GOPATH/src/learngolang
RUN go build main.go

EXPOSE 8084
ENTRYPOINT ["./main"]
