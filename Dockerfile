FROM node:8-alpine
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm i -g serve && npm install && npm run build

CMD serve -p 5000 build
