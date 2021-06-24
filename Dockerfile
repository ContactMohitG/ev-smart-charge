FROM alpine:3.14
# RUN apk add --update 
# RUN apk add --update nginx 

RUN apt-get update
RUN apt-get install nginx -y
COPY . /var/www/html/
expose 8090
CMD ["nginx", "-g", "daemon off;"]