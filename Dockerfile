FROM nginx:alpine
LABEL maintainer="104250965@qq.com"

COPY ./html /usr/share/nginx/html
COPY ./nginx/mytest.conf /etc/nginx/conf.d/
# COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf 
COPY ./go/gotest  /usr/share/go/
COPY ./start.sh /usr/local/bin/start.sh

RUN chmod +x /usr/local/bin/start.sh
RUN apk add --no-cache tzdata \
  && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  && echo "Asia/Shanghai" > /etc/timezone

CMD sh /usr/local/bin/start.sh
EXPOSE 81