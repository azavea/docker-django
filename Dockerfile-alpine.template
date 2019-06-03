FROM python:%%PYTHON_VERSION%%-alpine

ENV PG_MAJOR %%PG_MAJOR%%
ENV PG_VERSION %%PG_VERSION%%

COPY requirements.txt /tmp/

RUN set -ex \
    && apk add --no-cache --virtual .build-deps \
        --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/main \
       gcc \
       postgresql-dev=$PG_VERSION \
       musl-dev \
    && apk add --no-cache \
        --repository http://dl-cdn.alpinelinux.org/alpine/v3.9/main \
       gettext \
       postgresql-client=$PG_VERSION \
    && apk add --no-cache \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
       gdal \
    && pip install --no-cache-dir -r /tmp/requirements.txt \
    && apk del .build-deps \
    && rm -rf /tmp/requirements.txt

ENTRYPOINT ["/usr/local/bin/gunicorn"]
