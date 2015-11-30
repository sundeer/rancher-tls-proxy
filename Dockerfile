FROM nginx

RUN apt-get install openssl

COPY nginx.conf /etc/nginx/
COPY nginx.crt /etc/nginx/
COPY nginx.key /etc/nginx/
COPY conf.d /etc/nginx/conf.d
