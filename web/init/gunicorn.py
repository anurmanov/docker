accesslog='/var/log/gunicorn/access.log'
errorlog='/var/log/gunicorn/error.log'
loglevel='debug'
#bind='0.0.0.0:8080'
bind='unix:/var/www/medsmartcom/gunicorn.sock'
backlog=1000
workers=2
timeout=30
keepalive=7

