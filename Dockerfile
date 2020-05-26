FROM ubuntu:latest
LABEL maintainer "Haikal Khairuddin <z4nyx@outlook.com>"

# Malaysian timezone (GMT+8)	
ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN apt update -qq && apt upgrade -y && apt install git \
    git clone https://github.com/akhilnarang/scripts && cd scripts && bash setup/android_build_env.sh
