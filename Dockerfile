FROM django:1.9.8-python2

MAINTAINER Azavea <systems@azavea.com>

RUN set -ex \
  && buildDeps=' \
    build-essential \
    mysql-client \
    libmysqlclient-dev \
    sqlite3 \
	' \
  && deps=' \
    gdal-bin \
  ' \
  && apt-get update && apt-get install -y ${buildDeps} ${deps} --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && pip install \
     gunicorn==19.6.0 \
     psycopg2==2.6.2 \
     gevent==1.1.1 \
  && pip uninstall --yes mysqlclient \
  && apt-get purge -y --auto-remove ${buildDeps}

ENTRYPOINT ["/usr/local/bin/gunicorn"]
