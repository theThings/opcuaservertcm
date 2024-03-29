FROM node:14

# Create app directory
WORKDIR /

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install typescript
RUN npm install && npm install ts-node
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

CMD ["npm", "run", "start" ]