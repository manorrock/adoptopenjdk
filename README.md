# AdoptOpenJDK

## Important

This repository has been deprecated. For official AdoptOpenJDK images go to 
[Docker Hub](https://hub.docker.com/_/adoptopenjdk).

There are several ways to use this container. A couple of examples are illustrated below:

# Mount a host directory and run the Java compiler against a source file

    docker run -v $PWD:/mnt -i manorrock/adoptopenjdk javac MyTest.java
----

# Mount a host directory and run Java

    docker run -v $PWD:/mnt -i manorrock/adoptopenjdk java -cp . MyTest
---
Note the default work directory of this container is /mnt
