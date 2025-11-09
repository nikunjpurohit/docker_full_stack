FROM node:22-alpine

WORKDIR /app

COPY package*.json ./   

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm",  "start"]

# docker build -t express-server .
# docker run -p 4000:4000 express-server

