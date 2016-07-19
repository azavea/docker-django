FROM python:2.7-slim

MAINTAINER Azavea <systems@azavea.com>

RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

ENV PG_MAJOR 9.5
ENV PG_CLIENT_VERSION 9.5+175.pgdg80+1

RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' ${PG_MAJOR} > /etc/apt/sources.list.d/pgdg.list

COPY requirements.txt /tmp/

RUN set -ex \
  && buildDeps=" \
    gcc \
    libpq-dev \
	" \
  && deps=" \
    gdal-bin \
    gettext \
    postgresql-client=${PG_CLIENT_VERSION} \
  " \
  && apt-get update && apt-get install -y ${buildDeps} ${deps} --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && pip install --no-cache-dir -r /tmp/requirements.txt \
  && rm /tmp/requirements.txt \
  && apt-get purge -y --auto-remove ${buildDeps}

ENTRYPOINT ["/usr/local/bin/gunicorn"]
