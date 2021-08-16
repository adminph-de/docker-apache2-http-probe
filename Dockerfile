FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs

RUN rm -f /usr/local/apache2/htdocs/index.html

COPY logo.png flsmidth.png
COPY index.html index.html
COPY script.js script.js
COPY style.css style.css
