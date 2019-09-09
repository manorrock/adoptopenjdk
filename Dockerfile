FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk10-binaries/releases/download/jdk-10.0.2%2B13.1/OpenJDK10U-jdk_x64_linux_hotspot_10.0.2_13.tar.gz && \
    tar xfvz OpenJDK10U-jdk_x64_linux_hotspot_10.0.2_13.tar.gz && \
    rm OpenJDK10U-jdk_x64_linux_hotspot_10.0.2_13.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk-10.0.2+13/bin
WORKDIR /mnt
