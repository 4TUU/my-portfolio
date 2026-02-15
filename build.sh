#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Python dependencies
pip install -r requirements.txt

# Install Node dependencies (for Tailwind)
npm install

# Build Tailwind correctly
# Note: Ensure the paths match your folder structure exactly
npx @tailwindcss/cli -i ./static/src/input.css -o ./static/src/output.css --minify

# Collect Static Files
python manage.py collectstatic --no-input

# Run Migrations
python manage.py migrate