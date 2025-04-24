FROM alpine:latest
WORKDIR /app
COPY pocketbase /app/pocketbase
COPY pb_data /app/pb_data
EXPOSE 8090
RUN chmod +x /app/pocketbase
CMD ["/bin/sh", "-c", "/app/pocketbase superuser upsert klavijorangel@gmail.com Sara98041660988 && /app/pocketbase serve --http=0.0.0.0:8090"]