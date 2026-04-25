# Imagen base ligera de Python
FROM python:3.11-slim

# Directorrio de trabajo
WORKDIR /app

# Copiar dependencias primero (para aprovechar cache de Docker)
COPY requirements.txt .
COPY app.py .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Comando para ejecutar la app
CMD ["python", "app.py"]