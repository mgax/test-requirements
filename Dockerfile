FROM python:3.6-slim

RUN mkdir -p /app/requirements
WORKDIR /app

COPY requirements/nlp.txt requirements/
RUN pip install --no-cache-dir -r requirements/nlp.txt

COPY requirements requirements
RUN pip install --no-cache-dir -r requirements/tests.txt
