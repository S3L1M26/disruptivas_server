FROM node:16 as development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=development

RUN npm install rimraf

COPY . .

EXPOSE 3000

RUN npm run build
