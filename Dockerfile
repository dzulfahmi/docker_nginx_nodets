FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Build TypeScript to JavaScript
RUN npm run build

# Expose port (ubah sesuai kebutuhan, misalnya 5020)
EXPOSE 5020

# Start the application
CMD ["npm", "start"]
