FROM alpine:latest
LABEL maintainer "Haikal Khairuddin <z4nyx@outlook.com>"

# Malaysian timezone (GMT+8)	
ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apk update && apk upgrade
RUN apk add git \
            bc \
            ccache \
            ncurses5-libs \
            bash \
            moreutils --no-cache

RUN apk add automake \
            autoconf \
            gawk \
            libtool \
            zip \
            curl --no-cache

RUN apk add wget \
            gnupg \
            python3 \
            python3-dev \
            unzip --no-cache
            
RUN apk add openjdk8 \
            pigz \
            tar \
            build-base --no-cache
