FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install nginx

FROM nginx:alpine
COPY ./simple_html_page.html /usr/share/nginx/html/simple_html_page.html
EXPOSE 80