# jenkins-docker-node

Merge of [jpetazzo/dind](https://github.com/jpetazzo/dind) with [bibinwilson/jenkins-slave](bibinwilson/jenkins-slave)

"Docker in docker" is required to run Flask unit tests inside the container, before pushing the image.

Original article regarding this setup is [here](https://devopscube.com/docker-containers-as-build-slaves-jenkins/) .

#### How to:
* `docker pull jakubbialoskorski/jenkins-docker-node`

or put it as Jenkins docker executor:

* `Manage Jenkins` -> `Manage Nodes and Clouds` -> `Configure Clouds` -> `Docker Agent Templates` -> `Docker Image`