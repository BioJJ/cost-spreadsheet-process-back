# Use uma imagem Python 3.8 como base
FROM python:3.8

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copie o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências Python
RUN pip install -r requirements.txt

# Copie todos os arquivos do projeto para o diretório de trabalho
COPY . .

# Exponha a porta em que a API Python será executada (5000)
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
