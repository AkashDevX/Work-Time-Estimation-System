# Use official Node.js LTS version as base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all backend source code
COPY . .

# Expose the port your app runs on (example 3000)
EXPOSE 4000

# Step 7: Command to run your app
CMD ["node", "index.js"]
