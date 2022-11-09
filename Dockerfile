
from node:17-alpine

ENV PATH /app/node_modules/.bin:$PATH

WORKDIR /app

COPY package*.json ./


RUN npm install --silent
RUN npm install --save-dev webpack@5.74.0 --legacy-peer-deps
RUN npm install --save-dev react-scripts@5.0.1 --legacy-peer-deps
RUN npm install --legacy-peer-deps

copy . .

CMD ["npm", "start"]

