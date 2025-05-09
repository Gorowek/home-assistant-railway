FROM ghcr.io/home-assistant/home-assistant:stable
RUN apk add --no-cache jq  # Для обработки JSON в MQTT

# Создаем необходимые директории
RUN mkdir -p /config/custom_components/dhcp
COPY ./config /config
COPY ./custom_components/dhcp/__init__.py /config/custom_components/dhcp/

# Устанавливаем права
RUN chmod -R 755 /config

