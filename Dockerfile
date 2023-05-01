FROM golang:alpine3.17 AS builder
WORKDIR /app
COPY ./app /app
RUN go build -ldflags="-s -w" -o bin/fullcyclerocks.bin fullcyclerocks.go

FROM scratch
WORKDIR /app
COPY --from=builder /app/bin/fullcyclerocks.bin .
CMD [ "/app/fullcyclerocks.bin" ]

####################
# Example commands #
####################

# To build:
#   docker build -t alexandropatrik/golang-bin:v1 .

# To run:
#   docker run alexandropatrik/golang-bin:v1