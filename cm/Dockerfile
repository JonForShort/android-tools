FROM ubuntu:16.04

#
# Install dependencies
#
RUN apt-get update && \
    apt-get install -y bc bison bsdmainutils build-essential curl flex g++-multilib gcc-multilib git gnupg gperf \
        lib32ncurses5-dev lib32z1-dev libesd0-dev libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev libxml2-utils lzop \
        sudo openjdk-8-jdk pngcrush schedtool xsltproc zip zlib1g-dev graphviz && \
    apt -y autoclean && apt -y autoremove && apt clean

#
# Install repo tool
#
ADD https://commondatastorage.googleapis.com/git-repo-downloads/repo /usr/local/bin/
RUN chmod 755 /usr/local/bin/repo
