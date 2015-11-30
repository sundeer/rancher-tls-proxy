FROM nginx

RUN apt-get install openssl

COPY nginx.conf /etc/nginx/
COPY conf.d /etc/nginx/conf.d

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048  \
        -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=rancher.corngoodness.com" \
        -keyout /etc/nginx/nginx.key \
        -out /etc/nginx/nginx.crt
