FROM debian:jessie

MAINTAINER Rahulkrishnan R A "rahulkrishnanfs@gmail.com"

RUN apt-key adv --keyserver  pgp.mit.edu --recv-keys  7BD9BF62 \
                    && echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list  \
                    && apt-get update -y \
                    && apt-get install nginx -y && apt-get install vim -y \
                    && rm -rf /var/lib/apt/lists/*
      
EXPOSE 80 443

ENTRYPOINT ["nginx","-g","daemon off;"]
