# Basic Docker App

Aplicación Flask simple containerizada con Docker.

## 🚀 Comandos rápidos

```bash
# Construir la imagen
docker build -t basic-docker-app .

# Ejecutar el contenedor
docker run -d -p 5000:5000 --name my-app basic-docker-app

# Ver logs
docker logs my-app

# Detener y eliminar
docker stop my-app && docker rm my-app
```

## 🌐 Endpoints

- `GET /` - Mensaje de bienvenida
- `GET /health` - Health check

## 📁 Estructura

```
basic-docker/
├── app.py           # Aplicación Flask
├── requirements.txt # Dependencias
├── Dockerfile       # Configuración Docker
└── README.md        # Documentación
```

## 🐳 Docker Compose

```bash
# Construir y ejecutar
docker-compose up -d

# Ver logs
docker-compose logs -f

# Detener
docker-compose down

# Reconstruir después de cambios
docker-compose up -d --build
```

### Servicios incluidos:
- `app` - Aplicación Flask en puerto 5000
- Healthcheck integrado cada 30s