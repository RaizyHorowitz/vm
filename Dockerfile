# Fetching the latest node image
FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /react-app

# Installing Fetching the latest node image
COPY ./package*.json /react-app

RUN npm install

# Copying all the files in the project
COPY . .

# Starting our application
CMD ["npm","start"]