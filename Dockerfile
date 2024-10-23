FROM node:20

RUN apt-get update && apt-get install -y git

WORKDIR /app

RUN git clone https://github.com/InterstellarNetwork/Interstellar.git

WORKDIR /app/Interstellar

RUN npm install

CMD ["npm", "start"]
