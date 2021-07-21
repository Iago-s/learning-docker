# Imagem baseada no node
FROM node:alpine

# Diretorio de trabalho
WORKDIR /usr/app

# Copiando o arquivo package.json para o diretorio de trabalho
COPY package*.json ./

# Executando um comando no workdir
RUN yarn

# Copiando todos os arquivos (index.js etc) para o workdir
COPY . .

# Expondo a porta
EXPOSE 3000

# Comando para iniciar a aplicação
CMD yarn start