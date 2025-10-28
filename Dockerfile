FROM node:18-alpine AS app
WORKDIR /app
COPY yarn.lock package.json .
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000


FROM docker.io/mysql:8.0 AS db