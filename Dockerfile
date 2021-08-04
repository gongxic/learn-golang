FROM golang:alpine as build
WORKDIR /src
RUN go build main.go

FROM alpine as run
COPY --from=build /src .
EXPOSE 8084
ENTRYPOINT ["./main"]
