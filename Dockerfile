# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

#-y is for accepting yes when the system asked us for installing the package
RUN apt-get update && apt-get install -y \
    git \	
    cmake \
    ninja-build \
    doxygen \
    build-essential \
    autoconf \
    libtool \
    pkg-config \
    apt-transport-https \
    curl \
    gnupg \
    g++ \
    gdb \
    unzip \
    zip \
    wget

RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
RUN mv bazel-archive-keyring.gpg /usr/share/keyrings
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update && apt install -y bazel

RUN wget https://github.com/bazelbuild/bazel/releases/download/7.3.1/bazel-7.3.1-installer-linux-x86_64.sh && chmod +x bazel-7.3.1-installer-linux-x86_64.sh && ./bazel-7.3.1-installer-linux-x86_64.sh && rm ./bazel-7.3.1-installer-linux-x86_64.sh