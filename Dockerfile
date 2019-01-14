# use our prepared Raspberry Pi compatible Docker base image with Node.js
FROM node:9.6.1-alpine

# make the src folder available in the docker image
COPY src/ /src
WORKDIR /src

# install the dependencies from the package.json file
RUN npm install

# make port 80 available outside of the image
EXPOSE 80

# start node with the index.js file of our hello-world application
CMD ["node", "index.js"]