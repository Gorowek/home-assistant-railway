FROM ghcr.io/home-assistant/home-assistant:stable
RUN apk add --no-cache jq  # Для обработки JSON в MQTT
