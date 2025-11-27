# Use Node 20
FROM node:20

# Create app folder
WORKDIR /app

# Install only dependencies first
COPY package*.json ./
RUN npm install

# Copy everything
COPY . .

# Build Next.js project
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start Next.js server
CMD ["npm", "start"]
