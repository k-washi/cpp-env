FROM ubuntu:22.04

RUN apt-get update

# タイムゾーンの設定
RUN apt install -y tzdata
ENV TZ=Asia/Tokyo

RUN apt install -y wget curl git zip \
  g++ \
  cmake \
  clang-format

WORKDIR /workspace