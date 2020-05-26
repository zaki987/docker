FROM ubuntu:latest
LABEL maintainer "Haikal Khairuddin <z4nyx@outlook.com>"

# Malaysian timezone (GMT+8)	
ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get install --no-install-recommends -y \
        git \
        ca-certificates && \
    git clone https://github.com/akhilnarang/scripts && cd scripts && bash setup/android_build_env.sh
