FROM ghcr.io/getzola/zola:v0.22.0

WORKDIR /app
EXPOSE 1111

CMD ["serve", "--interface", "0.0.0.0", "--port", "1111", "--base-url", "http://127.0.0.1:1111"]
