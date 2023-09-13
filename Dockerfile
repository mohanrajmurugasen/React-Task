# Use an official Node.js runtime as the base image
FROM node:18.12.1-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json ./
COPY package-lock.json ./

# Install the dependencies
RUN npm install

COPY . ./

# Expose the port that the app will run on
EXPOSE 3000

# Define the command to run when the container starts
CMD ["npm", "start"]