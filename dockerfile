FROM jenkins/jenkins:lts-jdk11

USER root 
RUN apt-get update \
      && apt-get install -y sudo \
      && apt-get update \
      && apt-get install -y docker.io \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER jenkins
