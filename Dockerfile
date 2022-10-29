FROM nginx:latest
RUN apt update
RUN apt install -y wget
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD *.html /usr/share/nginx/html/
EXPOSE 80
CMD wget http://172.30.1.45:9999/default.conf -O /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'