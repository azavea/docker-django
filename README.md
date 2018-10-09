# docker-django

This repository contains a collection of templated `Dockerfile` for image variants designed to support Django through the Gunicorn WSGI HTTP server. In addition, these images include support for GeoDjango, PostgreSQL, and Gevent.

## Usage

### Template Variables

- `PYTHON_VERSION` - Python interpreter version (for `python:*-slim-stretch` or `python:*-alpine` [images](https://hub.docker.com/_/python/))
- `PG_MAJOR` - Major version number of the target PostgreSQL database instance (`9.3`, `9.4`, `9.5`, `9.6`, and `10`)
- `PG_VERSION` - Version number for `postgresql-client-$PG_MAJOR` package
- `VARIANT` - Base container image variant (`alpine` or `slim`)

### Testing

An example of how to use `cibuild` to build and test an image:

```bash
$ CI=1 VERSION=2.0 PYTHON_VERSION=3.6 \
  PG_MAJOR=10 PG_VERSION=10.5-1.pgdg90+1 VARIANT=slim \
  ./scripts/cibuild
```
