FROM node:latest

WORKDIR /app/my-app

COPY package*.json ./

RUN npm install

# Add application files to the container (Just an Example)
# ADD https://github.com/example/my-app/archive/master.tar.gz ./

COPY . /app/my-app

ENV PORT=3000

EXPOSE 3000

CMD [ "node", "app.js" ]