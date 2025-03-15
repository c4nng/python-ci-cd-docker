# Python'ın temel imajını kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini oluşturuyoruz
WORKDIR /app

# Gereksinim dosyasını kopyalıyoruz
COPY requirements.txt /app/

# Bağımlılıkları yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyalıyoruz
COPY . /app/

# Uygulamayı başlatıyoruz
CMD ["python", "app.py"]
