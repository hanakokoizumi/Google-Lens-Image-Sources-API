# Use a Node.js base image with Puppeteer pre-installed
FROM ghcr.io/puppeteer/puppeteer:latest

# Set the working directory
WORKDIR /app

# Ensure proper permissions for the working directory
RUN chown node:node /app

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Switch to the node user to avoid permission issues
USER node

# Specify the command to run your application
CMD ["node", "index.js"]
