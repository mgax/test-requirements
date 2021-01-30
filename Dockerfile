FROM python:3.6-slim

RUN runDeps="netcat libpq-dev gettext wget tar build-essential gcc" \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends $runDeps \
    && apt-get clean \
    && rm -vrf /var/lib/apt/lists/*

RUN mkdir -p /app/requirements
WORKDIR /app

RUN pip install -U setuptools pip

RUN pip install --no-cache-dir nltk tensorflow-hub tensorflow numpy

COPY requirements requirements
RUN pip install --no-cache-dir -r requirements/requirements.txt
