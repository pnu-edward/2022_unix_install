#!/bin/bash

apt-get update \
  && apt-get install -y ssh \
      build-essential \
      gcc \
      g++ \
      gdb \
      clang \
      make \
      ninja-build \
      cmake \
      autoconf \
      automake \
      locales-all \
      dos2unix \
      rsync \
      tar \
      git


git clone https://github.com/jinn-ie/unix_term13_2 && cd unix_term13_2
git submodule init && git submodule update --remote googletest
make
make test
