FROM --platform=linux/amd64 debian:stable-slim

RUN apt-get update && apt-get install -y ca-certificates

# Copy the static files first
COPY ./static ./static

# Add the binary
ADD notely /usr/bin/notely

CMD ["notely"]