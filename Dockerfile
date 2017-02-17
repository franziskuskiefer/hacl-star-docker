FROM ubuntu:16.04
MAINTAINER Franziskus Kiefer <franziskuskiefer@gmail.com>

RUN useradd -d /home/worker -s /bin/bash -m worker
WORKDIR /home/worker

ADD build.sh /home/worker/
RUN chmod +x /home/worker/build.sh

# Install dependencies and set-up everything.
ADD setup.sh /tmp/setup.sh
RUN bash /tmp/setup.sh

# Change user.
USER worker

ADD setup-hacl.sh /tmp/setup-hacl.sh
RUN bash /tmp/setup-hacl.sh

# Env variables.
ENV HOME /home/worker
ENV SHELL /bin/bash
ENV USER worker
ENV LANG en_US.UTF-8

# Set a default command for debugging.
# CMD ["/bin/bash", "--login"]

