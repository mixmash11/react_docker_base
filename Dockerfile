# node alpine base image
FROM node:current-alpine

# set working directory
WORKDIR /app

# add node module bin to path
ENV PATH /app/node_modules/.bin:$PATH

# install/cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install react-scripts@latest -g

# start app
CMD ["npm", "start"]




