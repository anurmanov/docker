#!/bin/bash
celery worker -A medsmartcom -l INFO -f /tmp/celery.log &
python3 /var/www/medsmartcom/manage.py collectstatic --noinput
gunicorn -c /etc/gunicorn/gunicorn.py medsmartcom.wsgi:application
