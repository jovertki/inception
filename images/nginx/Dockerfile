FROM debian:buster

RUN echo "deb http://deb.debian.org/debian/ stretch main contrib non-free\n deb-src http://deb.debian.org/debian/ stretch main contrib non-free\n" >> /etc/apt/sources.list && \
	apt-get update && \
	apt-get install -y --no-install-recommends apt-utils && \
	apt install -y build-essential \
	nginx \
	wget \
	vim

ADD nginx.conf etc/nginx/

EXPOSE 80

CMD service nginx start