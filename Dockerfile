FROM ubuntu
SHELL ["/bin/bash", "-c"]
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git wget curl python3 python3-pip
RUN wget https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh
RUN bash elan-init.sh -y
RUN rm elan-init.sh
RUN python3 -m pip install mathlibtools
RUN cp ~/.elan/bin/* /bin
RUN leanproject new lean

