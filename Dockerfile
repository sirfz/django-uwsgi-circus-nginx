FROM python:3.5

MAINTAINER Druhin Bala <druhin.bala@gmail.com>
RUN apt-get update && \
    apt-get install -y nginx && \
    useradd user && \
    groupadd nginx && \
    usermod -a -G nginx user

RUN mkdir -p -m 770 /src/run
RUN mkdir -p /etc/nginx/sites-enabled/

WORKDIR /src
ADD . /src

RUN pip3 install -r /src/requirements.txt
RUN ln -s configs/nginx.conf /etc/nginx/sites-enabled/ \\
                             /etc/nginx/sites-available/

EXPOSE 8000

CMD ["/usr/local/bin/uwsgi", "--ini", "app_uwsgi.ini"]
