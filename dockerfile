# 1. Empezar desde la imagen oficial de n8n (basada en Alpine)
FROM docker.n8n.io/n8nio/n8n

# 2. Cambiar al usuario 'root' para tener permisos de instalación
USER root

# 3. Instalar las herramientas usando 'apk' y la bandera para pip
RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install yt-dlp --break-system-packages

# 4. Devolver el control al usuario 'node' por seguridad
USER node