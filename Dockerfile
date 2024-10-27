# Use a Node.js base image with Puppeteer pre-installed
FROM ghcr.io/puppeteer/puppeteer:latest

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json separately
COPY --chown=node:node package*.json ./

# Ensure proper permissions for the working directory
RUN chown node:node /app

# Switch to the node user to avoid permission issues
USER node

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY --chown=node:node . .

# Specify the command to run your application
CMD ["node", "index.js"]
