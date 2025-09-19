FROM node:20-alpine
WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY . .
EXPOSE 3000 4000 5000
USER root
CMD ["node", "server.js"]