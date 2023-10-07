# Use uma imagem Python como base
FROM python:3.8

# Diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo de código fonte para o contêiner
COPY . .

# Atualize o pip
RUN pip install --upgrade pip

# Instale as dependências diretamente
RUN pip install flask pandas numpy flask-cors

# Comando para iniciar a aplicação Flask
CMD [ "python", "app.py" ]
