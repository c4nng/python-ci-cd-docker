import requests
import sys

# Telegram Bot Token ve Chat ID
BOT_TOKEN = '7191827461:AAEgQreyomCjAK7Wn6cgXHrHHk-GTQBKL-A'  # Buraya BotFather'dan aldığınız token'ı koyun
CHAT_ID = '-1002280639697'      # Buraya mesaj göndereceğiniz Telegram kullanıcı/kanal chat ID'sini koyun

# Mesajı al ve gönder
def send_telegram_message(message):
    url = f"https://api.telegram.org/bot{BOT_TOKEN}/sendMessage"
    params = {
        "chat_id": CHAT_ID,
        "text": message
    }
    response = requests.get(url, params=params)
    return response.json()

# Mesajı gönder
if __name__ == "__main__":
    message = sys.argv[1]  # Mesajı komut satırından alıyoruz
    send_telegram_message(message)
