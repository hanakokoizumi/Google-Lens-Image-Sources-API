FROM ghcr.io/puppeteer/puppeteer:latest
WORKDIR /home/pptruser/app
COPY . .

USER root
RUN npm install

USER pptruser
CMD ["node", "index.js"]
