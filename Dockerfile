FROM ubuntu:18.04
MAINTAINER disen 1039032303@qq.com
WORKDIR /usr/src
RUN apt update
RUN apt install cron
RUN git clone https://github.com/xpy201/OneGuyAPI
WORKDIR /usr/src/OneGuyApp
RUN pip3 install -r requirements.txt
RUN chmod +x auto_down.sh
RUN crontab auto_down.cron
CMD python3 manage.py runserver 0:80


