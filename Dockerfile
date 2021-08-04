FROM golang:alpine as build
RUN go build main.go

FROM alpine as run
COPY --from=build /main .
EXPOSE 8084
ENTRYPOINT ["./main"]
