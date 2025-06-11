FROM rust:1.78

WORKDIR /app
COPY ./app /app

RUN cargo install cargo-edit
