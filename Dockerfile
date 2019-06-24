FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz && \
    tar xfvz OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz && \
    rm OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk8u212-b04/bin
WORKDIR /mnt
