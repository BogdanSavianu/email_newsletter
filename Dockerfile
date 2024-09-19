FROM rust:1.81.0

WORKDIR /app
# Install the required system dependencies for our linking configuration
RUN apt update && apt install lld clang -y
# Copy all files from our working environment to our Docker image
COPY . .
ENV SQLX_OFFLINE true
# Build the biinary
RUN cargo build --release
# When 'docker run' is executed, launch the binary
ENTRYPOINT ["./target/release/zero2prod"]
