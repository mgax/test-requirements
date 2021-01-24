FROM python:3.6-slim

RUN runDeps="netcat libpq-dev gettext wget tar build-essential gcc" \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends $runDeps \
    && apt-get clean \
    && rm -vrf /var/lib/apt/lists/*

RUN mkdir -p /app/requirements
WORKDIR /app

RUN pip install -U setuptools pip

COPY requirements/nlp.txt requirements/
RUN pip install --no-cache-dir -r requirements/nlp.txt

COPY requirements requirements
RUN pip install --no-cache-dir \
  -r requirements/nlp.txt \
  -r requirements/base.txt \
  -r requirements/dev.txt \
  -r requirements/prod.txt \
  -r requirements/tests.txt \
  -r requirements/docs.txt
