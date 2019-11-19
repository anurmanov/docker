FROM python:3.6.9-slim-buster
COPY ./requirements.txt /tmp/requirements.txt
COPY ./run_wsgi.sh /run_wsgi.sh
RUN eval `apt-get update $2>/dev/null` && eval `apt-get install -y $2>/dev/null` && pip3 install -r /tmp/requirements.txt
WORKDIR /var/www/medsmartcom/
CMD ["/bin/bash", "/run_wsgi.sh"] 

