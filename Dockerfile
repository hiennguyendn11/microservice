FROM node:12.13.0-alpine3.10

WORKDIR /app
COPY package.json ./
RUN yarn install
COPY . .
RUN yarn build
CMD [ "yarn", "start" ]
