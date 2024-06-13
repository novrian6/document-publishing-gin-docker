# Start from the official Go image
FROM golang:1.18-alpine

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Set environment variable for the views directory
ENV VIEWS_DIR=/app/internal/views


# Build the Go app
RUN go build -o /app/cmd/web/main /app/cmd/web/main.go

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the executable
CMD ["/app/cmd/web/main"]

