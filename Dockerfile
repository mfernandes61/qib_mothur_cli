FROM foodresearch/bppc
MAINTAINER mark.fernandes@quadram.ac.uk

USER root
RUN apt-get install -y mothur
USER guest
