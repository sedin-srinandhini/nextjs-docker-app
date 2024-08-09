# Use official Node.js image as the base
#node version is v21.6.1, so it is node:21
FROM node:21-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy application code
COPY . .

# Build Next.js application
RUN yarn build

# Expose the port
EXPOSE 3000

# Command to run the application
CMD ["yarn", "start"]