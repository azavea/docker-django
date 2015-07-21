FROM debian:jessie

MAINTAINER Azavea

# Install dependencies
RUN apt-get update && apt-get install -y \
    python-pip \
    build-essential \
    gdal-bin \
    libpq-dev \
    python-dev \
    postgresql-client-9.4 && \
    rm -rf /var/lib/apt/lists/*

RUN pip install gunicorn==19.3.0 && \
    pip install django==1.8.3 && \
    pip install psycopg2==2.6.1 && \
    pip install gevent==1.0.2
