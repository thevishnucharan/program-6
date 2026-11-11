#import base image
FROM node:18-alpine
#set working directory
WORKDIR /app
#copy required package
COPY package*.json ./
#run required dependecies
RUN npm install
#copy source app code
COPY . .
#expose running port
EXPOSE 3000
#run code
CMD ["node","index.js"]
