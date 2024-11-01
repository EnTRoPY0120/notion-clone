# Build stage
FROM node:20 AS builder 

WORKDIR /app

COPY package*.json ./

RUN npm install

ARG NEXT_PUBLIC_URL_LINK \
    NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY \
    CLERK_SECRET_KEY \
    EDGE_STORE_ACCESS_KEY \
    EDGE_STORE_SECRET_KEY 

COPY . .

RUN npm run build

# Production stage 
FROM node:current-alpine3.20 AS production

WORKDIR /app

COPY --from=builder /app/next.config.js ./
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json

EXPOSE 3000

CMD ["npm", "start"]

