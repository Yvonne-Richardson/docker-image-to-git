
FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=/America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update

# from manual image.  Stored in local docker repository, does not exist elsewhere.  This will make the automated image be the same as if it added onto the manual image
RUN apt-get install -y git ack-grep curl vim \
wget build-essential

RUN apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
ADD default /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx"]
