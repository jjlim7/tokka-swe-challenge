# Use the official Node.js image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install -g ts-node typescript

# Copy the rest of the application source code
COPY . .

# Build the TypeScript code
RUN npm run build

# Define the command to start the Node.js server
CMD [ "npm", "start" ]
