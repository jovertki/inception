FROM debian:buster

RUN echo "deb http://deb.debian.org/debian/ stretch main contrib non-free\n deb-src http://deb.debian.org/debian/ stretch main contrib non-free\n" >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get install -y --no-install-recommends apt-utils && \
	apt install -y build-essential \
	nginx \
	wget \
	openssl

ADD nginx.conf etc/nginx/

RUN openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Russia/L=Moscow/O=School21/OU=jovertki/CN=inc" -newkey rsa:4096 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]