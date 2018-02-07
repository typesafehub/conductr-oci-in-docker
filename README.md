# ConductR OCI in Docker

*Note that this project is EOL as of 2018-01-31.*

This project contains a `Dockerfile` and script for building and pushing the OCI in Docker image for ConductR.
ConductR uses this image to launch OCI Images and Bundles inside of Docker containers, thus providing support on
environments that aren't running a linux kernel.

### Building and Pushing

To build this image, run `build.sh`. An example of the entire process, including pushing to Lightbend's public
Bintray repo, is below.

```bash
$ ./build.sh 0.1.0
Building...done.

Image ID:  sha256:0cb1036dfbba848bf809de2c7916daae1c8223a1793e5b42ac2bc70f1a96ecf9
Image Tag: lightbend-docker-registry.bintray.io/conductr/oci-in-docker:0.1.0

Upload to bintray with: docker push lightbend-docker-registry.bintray.io/conductr/oci-in-docker:0.1.0
-> 0

$ docker login -u jasonlongshore -e jason.longshore@lightbend.com lightbend-docker-registry.bintray.io
Flag --email has been deprecated, will be removed in 1.14.
Password: 
Login Succeeded
-> 0

$ docker push lightbend-docker-registry.bintray.io/conductr/oci-in-docker:0.1.0
The push refers to a repository [lightbend-docker-registry.bintray.io/conductr/oci-in-docker]
d79f4715a170: Layer already exists 
23b9c7b43573: Layer already exists 
0.1.0: digest: sha256:dffaa40646eee679e35af987b12a8af2a091a27b426aaf0486ef89a879481b32 size: 739
-> 0

$ docker logout lightbend-docker-registry.bintray.io
```

&copy; Lightbend Inc., 2017
