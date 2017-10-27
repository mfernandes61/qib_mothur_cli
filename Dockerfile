FROM foodresearch/bppc
MAINTAINER mark.fernandes@quadram.ac.uk

USER root
RUN apt-get update &&apt-get install -y  wget zip nano r-base
#RUN apt-get update &&apt-get install -y mothur wget zip nano r-base
RUN mkdir mothur && cd mothur && wget https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64_static.zip \
&& unzip Mothur*.zip && rm Mothur*.zip # && echo "export PATH=$PATH:/mothur" >> /etc/profile
# RUN wget https://github.com/mothur/mothur/releases/download/v1.39.5/Mothur.linux_64_static.zip Mothur.zip && mkdir /mothur && unzip Mothur.zip /mothur/

ADD Welcome.txt /etc/motd
ADD get_data.sh /scripts/get_data.sh
ADD Mothur*.pdf /mothur_tutorial.pdf
RUN chmod +x /scripts/get_data.sh 

#RUN $SIAB_COMM
ENTRYPOINT ["/scripts/launchsiab.sh"]
CMD ["/bin/bash"]
