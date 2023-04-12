FROM node:14-alpine

WORKDIR /app

# Instalar dependencias
COPY package*.json ./
RUN npm install

# Instalar Cypress
RUN npm install cypress

# Copiar todo el código fuente
COPY . .

# Agregar el puerto en el que la aplicación escucha
ENV PORT 3000

# Iniciar la aplicación
CMD ["npm", "run", "start"]
