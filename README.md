# docker-django

[![Docker Repository on
Quay.io](https://quay.io/repository/azavea/django/status "Docker
Repository on Quay.io")](https://quay.io/repository/azavea/django)
[![Apache V2
License](http://img.shields.io/badge/license-Apache%20V2-blue.svg)](https://github.com/azavea/docker-django/blob/develop/LICENSE)

Base `Dockerfile` based off of [`debian:jessie`](https://github.com/tianon/docker-brew-debian) that installs dependencies for a Django project with geospatial support.

Installs the following dependencies:
  - gdal
  - postgres/psycopg2
  - gevent
  - gunicorn

This images is intended to be inherited from in another Dockerfile.

The image is hosted on [Quay](quay.io)
