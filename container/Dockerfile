FROM golang:1.21.0-bullseye AS build

WORKDIR /app

# Copy the Go Modules manifests
COPY go.mod go.sum ./
# Download modules. They will be cached if the go.mod and go.sum files do not change.
RUN go mod download

# Copy the source code
COPY ./cmd ./cmd

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go mod download \
    && go build -o /bin/app

# Final stage
FROM debian:bullseye

WORKDIR /

COPY --from=build /bin/app /bin/app

CMD ["/bin/app"]
