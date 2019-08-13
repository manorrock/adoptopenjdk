FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.2%2B10/OpenJDK12U-jdk_x64_linux_hotspot_12.0.2_10.tar.gz && \
    tar xfvz OpenJDK12U-jdk_x64_linux_hotspot_12.0.2_10.tar.gz && \
    rm OpenJDK12U-jdk_x64_linux_hotspot_12.0.2_10.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk-12.0.2+10/bin
WORKDIR /mnt
