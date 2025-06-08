# Starte mit dem offiziellen n8n Docker-Image
FROM n8nio/n8n

# Wechsle zum 'root'-Benutzer, um die Erlaubnis zur Installation von Paketen zu haben
USER root

# Installiere ffmpeg und einige Standard-Schriftarten für den 'drawtext'-Filter
# Das ist notwendig, um Text über dein Video zu legen.
RUN apt-get update && apt-get install -y \
    ffmpeg \
    fonts-liberation \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Wechsle für mehr Sicherheit wieder zurück zum 'node'-Benutzer
USER node