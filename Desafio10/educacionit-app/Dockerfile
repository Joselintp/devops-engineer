# Usamos la version oficial de NodeJS
FROM node:22


# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the application code
COPY . .

# Build the application
RUN npm run build

# Set the environment variables
ENV MONGO_DB_URI=mongodb://mongo:27017
ENV MONGO_DB_NAME=db-desafio10
ENV MONGO_DB_USER=root
ENV MONGO_DB_PASS=PssD10

# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start:prod"]