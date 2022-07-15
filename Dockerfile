FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY test.html .
WORKDIR /etc/nginx/conf.d/
COPY default.conf .
RUN cat default.conf
EXPOSE 8081
CMD ["sh","-c","nginx -v && nginx -c /etc/nginx/nginx.conf && nginx -s reload"]
