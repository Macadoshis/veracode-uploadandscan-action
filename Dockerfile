# Container image that runs your code
FROM digital-factory-docker.bnc.ca/ca.bnc.sbip/openjdk:latest

#RUN yum install curl

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
