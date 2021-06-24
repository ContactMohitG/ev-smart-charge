FROM ubuntu

RUN apt-get update
RUN apt-get install nginx -y
COPY . /var/www/html/
expose 8090
CMD ["nginx", "-g", "daemon off;"]