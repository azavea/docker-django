# docker-django

This repository contains a collection of templated `Dockerfile` for image variants designed to support Django through the Gunicorn WSGI HTTP server. In addition, these images include support for GeoDjango, PostgreSQL, and Gevent.

## Usage

### Template Variables

- `PYTHON_VERSION` - Python interpreter version (for `python:*-slim-buster` or `python:*-alpine` [images](https://hub.docker.com/_/python/))
- `PG_MAJOR` - Major version number of the target PostgreSQL database instance (`10` and `12`)
- `PG_VERSION` - Version number for `postgresql-client-$PG_MAJOR` package
- `VARIANT` - Base container image variant (`alpine` or `slim`)

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=2.2 PYTHON_VERSION=3.8 \
  PG_MAJOR=10 PG_VERSION=10.11-1.pgdg100+1 VARIANT=slim \
  ./scripts/cibuild
```
