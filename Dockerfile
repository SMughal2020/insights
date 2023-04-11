FROM node:8-stretch
# RUN apt-get update && apt-get install -y curl@7.52.1-5+deb9u10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
#below copies our app source to the docker image
COPY . .
EXPOSE 5000
CMD [ "npm", "start" ]
