FROM node:12-alpine

COPY server/package.json server/package-lock.json ./

RUN npm ci

COPY server/ ./

CMD ["node", "index.js"]