FROM ubuntu:14.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y byobu curl git htop man unzip vim wget \
    build-essential python-pip python-dev zip \
    software-properties-common \
    libgmp-dev gcc-multilib valgrind openmpi-bin openmpi-doc libopenmpi-dev \
    portmap rpcbind libcurl4-openssl-dev unzip bzip2 imagemagick \
    libmagickcore-dev && \
  pip install requests future

# Set environment variables.
ENV HOME /
RUN mkdir /School
RUN mkdir /School/introduction_to_OS
RUN mkdir /School/introduction_to_OS/pr1

# Define working directory.
WORKDIR /School/introduction_to_OS/pr1

# Define default command.
CMD ["bash"]