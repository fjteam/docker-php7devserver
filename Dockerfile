FROM alpine:3.12

#php
RUN apk -U add php php7-json



#复制项目文件到
RUN mkdir /app
COPY . /app

#默认运行
WORKDIR /app/
#ENTRYPOINT php —version

VOLUME ["/app"]

RUN echo "ok..." >> ./index.php



EXPOSE 8080
EXPOSE 9000

CMD ["php","-S","0.0.0.0:8080","./index.php"]

