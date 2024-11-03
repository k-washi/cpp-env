FROM ubuntu:22.04

# Set timezone
RUN ln --symbolic --force /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Set locales
ENV DEBIAN_FRONTEND="noninteractive" \
    LC_ALL="C.UTF-8" \
    LANG="C.UTF-8"

RUN apt-get update -y && apt-get install -y \
  sudo wget curl git zip \
  build-essential gdb \
  g++ cmake openssl \
  libsndfile1 ffmpeg

ARG project_name=mlexpenv
ARG uid=1001
ARG gid=1001
ARG username=mluser
ARG APPLICATION_DIRECTORY=/workspace

RUN echo "uid ${uid}"
RUN echo "gid ${gid}"
RUN echo "username ${username}"
# RUN groupadd -r -f -g ${gid} ${username} && useradd -o -r -l -u ${uid} -g ${gid} -ms /bin/bash ${username}
RUN addgroup --gid ${gid} ${username} && \
    adduser --disabled-password --gecos '' --uid ${uid} --gid ${gid} ${username} && \
    usermod --append --groups sudo ${username} && \
    echo '%sudo ALL=(ALL:ALL) NOPASSWD:ALL' >> '/etc/sudoers'


USER ${username}
WORKDIR ${APPLICATION_DIRECTORY}