FROM python:2.7-slim

MAINTAINER Azavea <systems@azavea.com>

ENV GUNICORN_VERSION 19.6.0
ENV PSYCOPG2_VERSION 2.6.2
ENV GEVENT_VERSION 1.1.1
ENV DJANGO_VERSION 1.9.9

RUN set -ex \
  && buildDeps=' \
    gcc \
    libpq-dev \
	' \
  && deps=' \
    gdal-bin \
    gettext \
    postgresql-client \
  ' \
  && apt-get update && apt-get install -y ${buildDeps} ${deps} --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && pip install \
     gunicorn==${GUNICORN_VERSION} \
     psycopg2==${PSYCOPG2_VERSION} \
     gevent==${GEVENT_VERSION} \
     Django==${DJANGO_VERSION} \
  && apt-get purge -y --auto-remove ${buildDeps}

ENTRYPOINT ["/usr/local/bin/gunicorn"]
