# Python'ın temel imajını kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini oluşturuyoruz
WORKDIR /src

# Gereksinim dosyasını kopyalıyoruz
COPY requirements.txt /src/

# Bağımlılıkları yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyalıyoruz
COPY . /src/

# Uygulamayı başlatıyoruz
CMD ["python", "app.py"]
