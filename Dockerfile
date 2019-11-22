FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u232-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u232b09.tar.gz && \
    tar xfvz OpenJDK8U-jdk_x64_linux_hotspot_8u232b09.tar.gz && \
    rm OpenJDK8U-jdk_x64_linux_hotspot_8u232b09.tar.gz && \
    mv jdk8u232-b09 adoptopenjdk8u232-b09 && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/adoptopenjdk8u232-b09/bin
WORKDIR /mnt
