FROM node:18

# Create app directory
WORKDIR /usr/src/app/server

# Install app dependencies
COPY server/package*.json ./

# RUN npm install
RUN npm ci

# Bundle app source
COPY server/. .

# Build
RUN npm run build

# Remove dev dependencies.
RUN npm prune --production

CMD [ "npm", "run", "start"]