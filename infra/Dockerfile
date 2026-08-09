# CI: taskflow-infra
FROM node:22-slim

WORKDIR /app

# Copiamos primero package*.json para aprovechar la caché de capas de Docker
COPY backend/package*.json ./backend/
RUN cd backend && npm install --omit=dev

# Copiamos el resto del proyecto (backend, frontend y migraciones)
COPY backend ./backend
COPY frontend ./frontend
COPY migrations ./migrations

WORKDIR /app/backend

EXPOSE 3000

CMD ["node", "server.js"]
