FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY test.html .
WORKDIR /etc/nginx/conf.d/
COPY default.conf .
EXPOSE 8081
CMD ["sh","-c","nginx -v && nginx -s reload"]
