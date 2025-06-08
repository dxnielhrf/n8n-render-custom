# Starte mit dem offiziellen n8n Docker-Image (das Alpine-basiert ist)
FROM n8nio/n8n

# Wechsle zum 'root'-Benutzer, um die Erlaubnis zur Installation von Paketen zu haben
USER root

# Installiere ffmpeg und Schriftarten mit dem 'apk' Paketmanager von Alpine Linux
# --no-cache ist eine gute Praxis, um Docker-Images klein zu halten.
RUN apk update && apk add --no-cache \
    ffmpeg \
    ttf-liberation

# Wechsle für mehr Sicherheit wieder zurück zum 'node'-Benutzer
USER node