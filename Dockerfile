FROM python:slim

RUN apt-get update && apt-get install -y \
gcc \
libjpeg-dev \
zlib1g-dev

WORKDIR /app
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python3", "./GearBot/GearBot.py"]
