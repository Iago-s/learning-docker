# Imagem baseada no node
FROM node

# Diretorio de trabalho
WORKDIR /usr/src/app

# Copiando o arquivo package.json para o diretorio de trabalho
COPY package.json .

# Executando um comando no workdir
RUN npm install

# Copiando todos os arquivos (index.js etc) para o workdir
COPY . .

# Expondo a porta
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]