FROM znck/pnpm as base

WORKDIR /home/node/app

COPY package*.json ./

RUN pnpm i

COPY . .

ENV PORT=8080

FROM base as production

ENV NODE_PATH=./dist

RUN pnpm run build