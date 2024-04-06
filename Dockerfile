# 1. build stage
FROM node:20.12-alpine3.18 AS build-stage
WORKDIR /app-build
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

# 2. production stage
FROM nginx:1.24-alpine3.17 AS production-stage
WORKDIR /app-production
COPY --from=build-stage /app-build/dist ./
COPY nginx.conf /etc/nginx/nginx.conf