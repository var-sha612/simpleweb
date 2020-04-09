# Specify a base image(node preinstalled, basically contains just node and some other simple programs, nothing else)
FROM node:alpine

# Any following command will be executed relative to this path
WORKDIR /usr/app

# only thing we need to run npm install
COPY ./package.json ./
# Copy contents from current working directory to the container, Install some depenendencies
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]