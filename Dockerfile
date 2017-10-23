FROM foodresearch/bppc
MAINTAINER mark.fernandes@quadram.ac.uk

USER root
RUN apt-get update &&apt-get install -y mothur wget
#RUN apt-get install -y wget
# RUN wget https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64_static.zip Mothur.zip && mkdir /mothur && unzip Mothur.zip /mothur/
USER guest

#RUN $SIAB_COMM
ENTRYPOINT ["/scripts/launchsiab.sh"]
CMD ["/bin/bash"]
