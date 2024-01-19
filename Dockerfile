FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/default.conf

WORKDIR /etc/nginx

COPY *.conf .
COPY api_conf.d ./api_conf.d

EXPOSE 80
