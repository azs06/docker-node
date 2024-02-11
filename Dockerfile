FROM node:latest
# Specify a base image
FROM node:16

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json from the app directory
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's source code from the app directory
COPY app/ .

# Expose port 3000
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
