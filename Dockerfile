FROM ubuntu:14.04
MAINTAINER "lamika <lamika@naver.com>"
LABEL "purpose"="webserver practice"

RUN apt-get update && apt -y install    apache2 \
                                        vim

COPY ./index.html /var/www/html/

WORKDIR /var/www/html

EXPOSE  80

CMD apachectl -D FOREGROUND

