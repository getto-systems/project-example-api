FROM rust:1-buster as builder
COPY . /build
WORKDIR /build
RUN cargo build --release

FROM gcr.io/distroless/static-debian10
COPY --from=builder /build/target/release/example-api /app
CMD ["/app"]
