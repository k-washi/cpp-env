FROM ubuntu:22.04

RUN apt-get update

# タイムゾーンの設定
RUN apt-get install -y tzdata
ENV TZ=Asia/Tokyo

RUN apt-get install -y wget curl git zip \
  build-essential gdb \
  g++ \
  cmake \

WORKDIR /workspace