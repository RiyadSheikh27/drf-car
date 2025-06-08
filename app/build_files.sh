#!/bin/bash

# Install dependencies via Vercel's Python
/opt/python/3.11/bin/python -m pip install -r requirements.txt

# Collect static files (Django)
/opt/python/3.11/bin/python manage.py collectstatic --noinput

# Optional: Run migrations
# /opt/python/3.11/bin/python manage.py migrate --noinput