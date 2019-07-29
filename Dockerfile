FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.4%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.4_11.tar.gz && \
    tar xfvz OpenJDK11U-jdk_x64_linux_hotspot_11.0.4_11.tar.gz && \
    rm OpenJDK11U-jdk_x64_linux_hotspot_11.0.4_11.tar.gz && \
    rm -rf /var/lib/apt/lists/* 
ENV PATH=$PATH:/usr/local/jdk-11.0.4+11/bin
WORKDIR /mnt
