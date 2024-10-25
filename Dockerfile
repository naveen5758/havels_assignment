FROM node:latest AS builder
WORKDIR /usr/src/app
COPY . .
COPY package*.json ./
RUN npm install


FROM nginx:1.24-alpine AS server
COPY --from=builder /usr/src/app /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
