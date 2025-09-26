FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
ENV MY_ENV_NAME=pai310

RUN conda create -n $MY_ENV_NAME python=3.10 -y
    
RUN /opt/conda/envs/$MY_ENV_NAME/bin/python -m pip install --upgrade pip && \
    /opt/conda/envs/$MY_ENV_NAME/bin/pip install promoterai tensorflow==2.15
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
