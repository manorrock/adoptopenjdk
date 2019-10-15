FROM manorrock/debian
RUN apt-get update && \
    apt-get install -y curl tar gzip && \
    cd /usr/local && \
    curl -L -O https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13%2B33/OpenJDK13U-jdk_x64_linux_hotspot_13_33.tar.gz && \
    tar xfvz OpenJDK13U-jdk_x64_linux_hotspot_13_33.tar.gz && \
    rm OpenJDK13U-jdk_x64_linux_hotspot_13_33.tar.gz && \
    mv jdk-13+33 jdk13 && \
    rm -rf /var/lib/apt/lists/*
ENV PATH=$PATH:/usr/local/jdk13/bin
WORKDIR /mnt
