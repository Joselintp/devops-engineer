# Usa la imagen oficial de Node.js como base
FROM node:16

# Establece el directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código de la aplicación
COPY . .

# Compila la aplicación
RUN npm run build

# Establece las variables de entorno
ENV MONGO_DB_URI=mongodb://mongo:27017/educacionit
#ENV MONGO_DB_NAME=educacionit
#ENV MONGO_DB_USER=root
#ENV MONGO_DB_PASS=root

# Expone el puerto
EXPOSE 3000

# Inicia la aplicación
CMD ["npm", "run", "start:prod"]