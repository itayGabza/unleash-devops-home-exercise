# Use the official Node.js image as the base image
FROM node:lts-bullseye-slim

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Set the environment variables for the application
ENV PORT=3000
ENV BUCKET_NAME=your_bucket_name

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "dist/index.js"]
