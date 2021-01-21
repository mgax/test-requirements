FROM python:3.6-slim

RUN mkdir -p /app
WORKDIR /app

COPY requirements/nlp.txt .
RUN pip install --no-cache-dir -r requirements/nlp.txt

COPY requirements .
RUN pip install --no-cache-dir -r requirements/tests.txt
