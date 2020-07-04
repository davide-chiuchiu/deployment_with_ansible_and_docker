FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install nginx

FROM nginx
COPY simple_html_page.html /usr/share/nginx/html/index.html
EXPOSE 80