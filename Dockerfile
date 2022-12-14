# Image
FROM node

# Create app directory on the image
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# The image uses port 8080
EXPOSE 8080

# Run the app
CMD node --require './tracing.js' app.js