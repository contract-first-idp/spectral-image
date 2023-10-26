FROM ubuntu:latest

# Install Node.js and Spectral
RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g @stoplight/spectral

# Define an entry point
ENTRYPOINT ["spectral"]
