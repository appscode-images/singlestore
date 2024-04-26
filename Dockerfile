ARG TARGETOS
ARG TARGETARCH
ARG TAG

# Use the SingleStore Node base image
FROM singlestore/node:$TAG

# Switch to the root user to install packages
USER root

RUN dnf install -y mysql singlestoredb-studio singlestoredb-toolbox singlestore-client


RUN chown -R memsql:memsql /etc/singlestore
# Switch back to the memsql user
USER 999:998
