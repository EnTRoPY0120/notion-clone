# Build stage
FROM node:20 AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install
