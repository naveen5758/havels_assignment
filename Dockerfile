FROM node:latest AS builder
WORKDIR /usr/src/app
COPY . .
COPY package*.json ./
RUN npm install
