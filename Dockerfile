FROM node:16.16.0-bullseye-slim

ARG NEW_RELIC_LICENSE_KEY

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json /usr/src/app/
RUN npm install

# Copying source files
COPY . /usr/src/app

# Building app
RUN npm run build

# Running the app
CMD "npm" "run" "start"