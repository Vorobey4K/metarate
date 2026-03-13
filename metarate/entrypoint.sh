#!/bin/sh

python manage.py migrate
python manage.py loaddata catalog/fixtures/catalog.json
python manage.py collectstatic --noinput

exec "$@"