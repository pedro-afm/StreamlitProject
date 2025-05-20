# Imagem base do Python
FROM python:3.13-alpine 

# Cria diretório de trabalho
WORKDIR /app

# Copia só o requirements primeiro para aproveitar cache
COPY requirements.txt .

# atualizar o pip
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copia o resto da aplicação
COPY . /app/

# Porta padrão do Streamlit
EXPOSE 8501

# Comando de inicialização
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
