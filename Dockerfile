FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.5%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.5_10.tar.gz && \
    tar xfvz OpenJDK11U-jdk_x64_linux_hotspot_11.0.5_10.tar.gz && \
    rm OpenJDK11U-jdk_x64_linux_hotspot_11.0.5_10.tar.gz && \
    mv jdk-11.0.5+10 adoptopenjdk11.0.5 && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/adoptopenjdk11.0.5/bin
WORKDIR /mnt
