FROM python:3.8-slim

COPY . /app

RUN pip install -U pip && pip install -r /app/requirements.txt

WORKDIR /app

CMD daphne -b 0.0.0.0 -p 8001 orlanchat.asgi:application
