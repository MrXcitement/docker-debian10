FROM debian:10
LABEL maintainer="mike@thebarkers.com" \
      description="A base debian:10 image to be used as the base image for debian dev image." \
      version="0.0.1"

# Upgrade and Install dev tools
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl git locales procps sudo tmux tree vim wget \
    && locale-gen en_US.UTF-8 \
    && adduser --quiet --disabled-password --home /home/docker --gecos "User" docker \
    && echo "docker:docker" | chpasswd \
    && usermod -aG sudo docker \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

USER docker
ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
