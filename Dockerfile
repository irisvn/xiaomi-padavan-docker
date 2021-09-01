FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -qy apt-utils
RUN apt-get -qy install locales
RUN locale-gen --no-purge en_US.UTF-8 ru_RU.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt -y -q update && apt -y -q upgrade && \
	apt install -y -q unzip libtool-bin curl cmake gperf gawk flex bison htop \
		nano xxd fakeroot cpio git python-docutils gettext automake autopoint \
		texinfo build-essential help2man pkg-config zlib1g-dev libgmp3-dev libmpc-dev \
		libmpfr-dev libncurses5-dev libltdl-dev wget kmod sudo locales vim && \
	rm -rf /var/cache/apt/

RUN apt install autoconf-archive

RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && locale-gen

ENV LANG en_US.utf8

RUN git clone --depth=1 https://github.com/irisvn/Padavan.git /opt/rt-n56u

RUN cd /opt/rt-n56u/toolchain-mipsel && ./clean_toolchain && ./build_toolchain

