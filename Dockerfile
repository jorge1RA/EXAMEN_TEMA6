# Imagen base de Node.js versión 14
FROM node:14

# Directorio de trabajo dentro del contenedor
WORKDIR /var/app

# Archivo package.json y package-lock.json
COPY package*.json ./

# Dependencias del proyecto
RUN npm install

# Copiamos el resto del código fuente del proyecto al directorio de trabajo
COPY . .

# Se expone el puerto 8080 para acceder a tu aplicación
EXPOSE 8080

# Defimos el comando para arrancar la aplicación
CMD ["npm", "start"]
