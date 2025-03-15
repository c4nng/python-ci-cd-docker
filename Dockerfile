# Python image'ı kullanıyoruz
FROM python:3.9

# Çalışma dizini oluşturuyoruz
WORKDIR /app

# requirements.txt'i src dizininden kopyalıyoruz
COPY src/requirements.txt /app/requirements.txt

# Bağımlılıkları yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Python kodlarını src dizininden kopyalıyoruz
COPY src/ /app/

# Uygulamayı çalıştırıyoruz
CMD ["python", "app.py"]
