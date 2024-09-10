# Use the official Node.js image as the base image
FROM node:20.13.1

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Svelte application
RUN npm run build

# Expose the port that your app runs on
EXPOSE 4173:4173

# Run the application
CMD ["npm", "run", "preview"]
