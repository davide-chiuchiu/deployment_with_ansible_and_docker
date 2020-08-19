# Layer 1: update ubuntu distribution and install/update nginx
FROM ubuntu:18.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install nginx

# Layer 2: host simple_html_page.html with nginx by replacing the nginx default with simple_html_page.html
FROM nginx
COPY simple_html_page.html /usr/share/nginx/html/index.html
EXPOSE 80