FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm install rimraf

COPY . .

EXPOSE 3000

RUN CMD ["node", "dist/main"]
