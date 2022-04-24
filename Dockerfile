FROM node:16.14.2-alpine3.14

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY package.json .
RUN yarn install

COPY . ./

COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod -R 777 /usr/local/bin/entrypoint.sh

RUN yarn clean && yarn build
ENV PORT 3000
EXPOSE $PORT
