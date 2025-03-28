FROM node:23.3.0-alpine3.20

RUN npm install -g npm@9.1.3
RUN apk add --no-cache openssl=3.3.2-r1

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
