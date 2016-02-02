FROM python:3.5.1-slim

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV DJANGO_VERSION 1.9.1

RUN pip install  psycopg2 django=="$DJANGO_VERSION" nosexcover pylint nose 