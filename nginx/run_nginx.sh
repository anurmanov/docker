#!/bin/bash
docker run -it -v $(pwd)/log:/var/log/nginx  -v /var/www/medsmartcom:/var/www/medsmartcom -v $(pwd)/init/nginx.conf:/etc/nginx/nginx.conf --name msc_nginx -d  nginx
