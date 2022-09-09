FROM node:18

# Create app directory
WORKDIR /stratumitm

# Copy package.json and package-lock.json to the app directory
COPY package.json package-lock.json ./

# Copy the rest of project files into this image
COPY . .

# Install dependencies
RUN npm install

# Install nodemon
RUN npm install -g nodemon

# Start the application
CMD ["npm", "start"]
