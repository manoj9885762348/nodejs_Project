##e an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose ports for MongoDB and Redis (assuming default ports)
EXPOSE 27017 6379

# Start the Node.js application
CMD ["node", "app.js"]

