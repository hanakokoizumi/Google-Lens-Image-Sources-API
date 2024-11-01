FROM ghcr.io/puppeteer/puppeteer:22.14.0
WORKDIR /home/pptruser/app
COPY . .

USER root
RUN npm install
RUN npx puppeteer browsers install chrome

USER pptruser
CMD ["node", "index.js"]
