FROM ubuntu:20.04

# Create ``aloja`` user for container with password ``aloja``.
# and give it password-less sudo access.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt -y --no-install-recommends install sudo emacs-nox vim-nox file python3-dateutil doxygen && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m aloja && \
    echo aloja:aloja | chpasswd && \
    cp /etc/sudoers /etc/sudoers.bak && \
    echo 'aloja  ALL=(root) NOPASSWD: ALL' >> /etc/sudoers

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-dev
RUN apt-get install -y python-pygments
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y cmake
RUN apt-get install -y build-essential
RUN apt-get install -y llvm-10 lldb-10 llvm-10-dev libllvm10 llvm-10-runtime
RUN apt-get install -y llvm-12 lldb-12 llvm-12-dev libllvm12 llvm-12-runtime
RUN apt-get install -y clang
RUN apt-get install -y ninja-build
RUN apt-get install -y python3-pip
RUN apt-get install -y screen
# for killall command
RUN apt-get install -y psmisc

RUN python3 -m pip install rich

COPY --chown=aloja:aloja . /home/aloja/
RUN rm /home/aloja/Dockerfile

USER aloja
WORKDIR /home/aloja