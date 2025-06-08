#!/bin/bash

# Install deps
python -m pip install -r requirements.txt

# Django: Collect static files
python manage.py collectstatic --noinput

# (Optional) Run migrations
# python manage.py migrate --noinput