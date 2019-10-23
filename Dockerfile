FROM ubuntu:latest
LABEL maintainer "z4nyx <z4nyx@outlook.com>"

# Malaysian timezone (GMT+8)	
ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
	gcc \
	libc6-dev \
	git \
	gcc \
	g++ \
	gperf \
	bison \
	flex \
	texinfo \
	help2man \
	make \
	libncurses5-dev \
	autoconf \
	automake \
	libtool \
	libtool-bin \
	gawk \
	wget \
	bzip2 \
	xz-utils \
	unzip \
	patch \
	python3 \
	libstdc++6 \
	subversion \
	curl \
	bc \
	libssl-dev \
	zip \
	tar \
	zstd
