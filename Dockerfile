FROM golang

WORKDIR /src

ADD . /src

RUN go build main.go

EXPOSE 8080

ENTRYPOINT ["./main"]