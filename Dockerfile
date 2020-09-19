FROM ubuntu:latest
LABEL maintainer "Haikal Khairuddin <z4nyx@outlook.com>"

# Malaysian timezone (GMT+5:30)	
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
        bc \
	bison \
	ca-certificates \
	curl \
	flex \
	gcc \
	git \
	libc6-dev \
	libssl-dev \
	make \
	openssl \
	python \
	ssh \
	wget \
	zip \
	zstd
        
