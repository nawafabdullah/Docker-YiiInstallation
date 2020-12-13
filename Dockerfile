FROM yiizh/yiizh.com

ADD . /app

ENTRYPOINT tail -f /dev/null

RUN cd /app; \
chmod +777 init.sh; \ 
./init.sh 

#EXPOSE 8123
