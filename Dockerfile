FROM node:20.5.1-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]

# tapper dans la console : docker build -t nom .
# tapper : docker images ( pour check le dossier si il est dans le . des images docker )
# docker run -p 3000:3000 nom