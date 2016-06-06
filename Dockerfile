FROM python:2.7-slim

MAINTAINER Azavea <systems@azavea.com>

COPY requirements.txt /tmp/

RUN set -ex \
  && buildDeps=' \
    build-essential \
    libpq-dev \
    python-dev \
	' \
  && deps=' \
    gdal-bin \
    git \
    postgresql-client-9.4 \
  ' \
  && apt-get update && apt-get install -y ${buildDeps} ${deps} --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && pip install --no-cache-dir -r /tmp/requirements.txt \
  && rm /tmp/requirements.txt \
  && apt-get purge -y --auto-remove ${buildDeps}

ENTRYPOINT ["gunicorn"]
