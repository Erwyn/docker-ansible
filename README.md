# Docker Ansible

This is a simple docker file to get a basic installation of ansible plus some
tools like pyrax (refer to Dockerfile to see what is exactly installed).

## How to use

Simply run the following command in your term:

    $ docker run -ti \
    -v <pathToYourAnsiblePlaybooks>:/data \
    -v <pathToYour.sshFolder>:/ssh \
    erwyn/ansible

You are in a terminal with ansible, that's all!
