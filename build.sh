#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

# Use the Node-based compiler which is more stable on Render
npm install
npx @tailwindcss/cli -i ./static/src/input.css -o ./static/src/output.css --minify

# The --no-input is key for automation
python manage.py collectstatic --no-input
python manage.py migrate