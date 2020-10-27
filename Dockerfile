FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    curl \
    netcat \
    tmux \
    python3 \
    python3-pip \
    ansible \
    &&  pip3 install --no-cache-dir pywinrm ansible-lint \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man

CMD ["/bin/bash"]
