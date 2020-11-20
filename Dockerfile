FROM nginx:1.19

ENV NGINX_PORT=8080

COPY default.conf.template /etc/nginx/templates/default.conf.template

COPY static /usr/share/nginx/html

EXPOSE 8080
