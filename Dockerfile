FROM node:14 as base

WORKDIR /home/node/app

COPY package*.json ./

RUN pnpm i

COPY . .

FROM base as production

ENV NODE_PATH=./dist

RUN npm run build