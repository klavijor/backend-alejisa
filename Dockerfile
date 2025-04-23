FROM alpine:latest
WORKDIR /app
COPY pocketbase.exe /app/pocketbase
COPY pb_data /app/pb_data
EXPOSE 8090
CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8090"]