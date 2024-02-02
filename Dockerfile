ARG TARGETOS
ARG TARGETARCH
ARG TAG

# Use the SingleStore Node base image
FROM singlestore/node:$TAG

# Switch to the root user to install packages
USER root

RUN dnf install -y mysql singlestoredb-studio singlestoredb-toolbox singlestore-client

# memsql
USER 999:998
