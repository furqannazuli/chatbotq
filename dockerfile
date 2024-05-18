# Gunakan official image Python sebagai base image
FROM python:3.10

# Set working directory dalam container
WORKDIR /app

RUN pip install rasa

# Salin seluruh file proyek ke dalam container
COPY . .

# Set exposed port untuk layanan Rasa (ganti dengan port yang Anda gunakan)
EXPOSE 5005

# Perintah untuk menjalankan Rasa
CMD ["rasa", "run"]
