FROM node:18-alpine3.15
COPY ./cors-anywhere/package.json .
COPY ./cors-anywhere/server.js .
COPY ./cors-anywhere/lib/* ./lib/
COPY ./cors-anywhere/key.pem .
COPY ./cors-anywhere/cert.pem .
RUN npm install package.json
EXPOSE 7070
ENTRYPOINT node ./server.js
