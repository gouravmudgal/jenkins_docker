# jenkins_docker
Jenkins running as Docker container and creating other containers

Mapping Docker host socket inside Jenkins container:
- /var/run/docker.sock:/var/run/docker.sock
We are using Docker host socket inside Jenkins docker container to create more containers on docker host (Not DIND).
Pls ensure that your /var/run/docker.sock as 666 permission set, otherwise you will keep getting permission issue and won't be able to use docker comannds without sudo inside Jenkins docker container.
