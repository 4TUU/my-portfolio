#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Python dependencies
pip install -r requirements.txt

# Build Tailwind (Assuming your input is in 'static/src/input.css')
# This requires Node to be available on the build instance
npm install
npx tailwindcss -i ./static/src/input.css -o ./static/src/output.css --minify

# Collect Static Files
python manage.py collectstatic --no-input

# Run Migrations
python manage.py migrate