FROM debian:9
LABEL maintainer="mike@thebarkers.com" \
      description="A base debian:9 image to be used as the base image for debian dev image." \
      version="0.1.1"

# Install git, process tools
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get -y install git procps wget tree vim

# Clean up apt repo
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["bash"]
CMD ["--login"]
