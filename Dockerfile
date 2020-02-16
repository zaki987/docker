FROM archlinux:latest
LABEL maintainer "Haikal Khairuddin <z4nyx@outlook.com>"

# Malaysian timezone (GMT+8)	
ENV TZ=Asia/Kuala_Lumpur
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Tidy-up
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
	base-devel \
	bc \
	git \
	python \
	openssh \
	wget \
	zip
