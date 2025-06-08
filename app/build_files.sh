#!/bin/bash

# Install dependencies using Vercel's Python
/usr/bin/python3 -m pip install --upgrade pip
/usr/bin/python3 -m pip install -r requirements.txt

# Collect static files
/usr/bin/python3 manage.py collectstatic --noinput

# Optional: Run migrations (if using external DB like Supabase)
# /usr/bin/python3 manage.py migrate --noinput

# Create necessary directories (Vercel needs explicit directory creation)
mkdir -p staticfiles_build/static
mkdir -p staticfiles_build/media