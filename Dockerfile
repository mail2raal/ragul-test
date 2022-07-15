FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY test.html .
EXPOSE 8081
