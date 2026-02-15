#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt
npm install

# Build the CSS
npx @tailwindcss/cli -i ./static/src/input.css -o ./static/css/output.css --minify

# Tell collectstatic to IGNORE the 'src' folder entirely
python manage.py collectstatic --no-input --ignore src
python manage.py migrate