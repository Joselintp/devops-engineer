# Usamos la version oficial de NodeJS
FROM node:22



# Indicamos nuestro directorio en Docker
RUN mkdir -p /home/app

# Copy package.json and package-lock.json
COPY . /home/app

# Install dependencies
RUN npm install

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