FROM rust:1.82

RUN apt-get update && apt-get install -y \
    pkg-config \
    libssl-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN cargo install cargo-edit --version 0.12.2

WORKDIR /app

COPY ./app /app
