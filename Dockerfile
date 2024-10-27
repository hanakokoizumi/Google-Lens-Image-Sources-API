# Use a Node.js base image with Puppeteer pre-installed
FROM ghcr.io/puppeteer/puppeteer:latest

# Set the working directory
WORKDIR /app

# Copy the rest of the application files
COPY . .

# Install dependencies
RUN npm install

# Switch to the node user to avoid permission issues
USER node

# Specify the command to run your application
CMD ["node", "index.js"]
