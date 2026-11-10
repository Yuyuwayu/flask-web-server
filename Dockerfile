# ============================================================
# Dockerfile
# Resep pembuatan Docker Image untuk Flask Web Server
# Praktikum Pertemuan 5 - Docker Basic
# ============================================================

FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY server.py .

EXPOSE 5000

CMD ["python", "server.py"]
