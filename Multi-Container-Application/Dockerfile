# 1. Use official Node.js lightweight image
FROM node:18-alpine

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy package files and install dependencies first
COPY package*.json ./
RUN npm install

# 4. Copy rest of the source code
COPY . .

# 5. Expose port 3000
EXPOSE 3000

# 6. Command to run your app
CMD ["nodemon", "server.js"]
