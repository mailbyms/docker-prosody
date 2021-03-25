# docker build -t mailbyms/prosody:stable-4857-lua-dbi-mysql .
# 或 docker-compose build

# base image
FROM jitsi/prosody:stable-4857

# running required command
RUN apt-get update \
    && apt-get install -y build-essential luarocks default-libmysqlclient-dev liblua5.2-dev \
    && luarocks install luadbi \
    && luarocks install luadbi-mysql MYSQL_INCDIR=/usr/include/mysql/

