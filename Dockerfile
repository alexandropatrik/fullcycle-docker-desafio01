FROM golang:alpine3.17 AS builder
WORKDIR /app
COPY ./app /app
RUN go build -ldflags="-s -w" -o bin/fullcyclerocks.bin fullcyclerocks.go

FROM scratch
WORKDIR /app
COPY --from=builder /app/bin/fullcyclerocks.bin .
CMD [ "/app/fullcyclerocks.bin" ]
