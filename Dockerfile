# Kopie vom Repo https://github.com/bumseb1ene/discord-reports/blob/main/Dockerfile
# Verwenden Sie ein offizielles Python-Image als Basis
FROM python:3.11
# Setzen Sie das Arbeitsverzeichnis im Container
WORKDIR /app
# Kopieren Sie die 'requirements.txt' in den Container und installieren Sie die Abhängigkeiten
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# Kopieren Sie den Rest des Projektverzeichnisses in den Container
COPY ban_client.py /app/
COPY api_manager.py /app/
# Führen Sie das Skript beim Start des Containers aus
CMD ["python", "./api_manager.py"]