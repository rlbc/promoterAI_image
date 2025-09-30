ARG GIT_BRANCH=latest
ARG BASE_IMAGE=continuumio/miniconda3

FROM ${BASE_IMAGE}:${GIT_BRANCH}

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN apt-get update && \
    apt-get install -y openmpi-bin libopenmpi-dev && \
    rm -rf /var/lib/apt/lists/*

RUN conda create -n tensorflow-gpu python=3.11.5 -y && \
    /opt/conda/envs/tensorflow-gpu/bin/python -m pip install --upgrade pip && \
    /opt/conda/envs/tensorflow-gpu/bin/pip install --no-cache-dir \
    absl-py==2.1.0 \
    astunparse==1.6.3 \
    flatbuffers==24.3.25 \
    gast==0.6.0 \
    google-pasta==0.2.0 \
    grpcio==1.68.0 \
    h5py==3.12.1 \
    keras==3.7.0 \
    libclang==18.1.1 \
    markdown==3.7 \
    markdown-it-py==3.0.0 \
    mdurl==0.1.2 \
    ml-dtypes==0.4.1 \
    namex==0.0.8 \
    numpy==2.0.2 \
    nvidia-cublas-cu12==12.5.3.2 \
    nvidia-cuda-cupti-cu12==12.5.82 \
    nvidia-cuda-nvcc-cu12==12.5.82 \
    nvidia-cuda-nvrtc-cu12==12.5.82 \
    nvidia-cuda-runtime-cu12==12.5.82 \
    nvidia-cudnn-cu12==9.3.0.75 \
    nvidia-cufft-cu12==11.2.3.61 \
    nvidia-curand-cu12==10.3.6.82 \
    nvidia-cusolver-cu12==11.6.3.83 \
    nvidia-cusparse-cu12==12.5.1.3 \
    nvidia-nccl-cu12==2.21.5 \
    nvidia-nvjitlink-cu12==12.5.82 \
    opt-einsum==3.4.0 \
    optree==0.13.1 \
    protobuf==5.29.0 \
    rich==13.9.4 \
    tensorboard==2.18.0 \
    tensorboard-data-server==0.7.2 \
    tensorflow==2.18.0 \
    tensorflow-io-gcs-filesystem==0.37.1 \
    termcolor==2.5.0 \
    werkzeug==3.1.3 \
    wrapt==1.17.0 \
    ipykernel scikit-learn \
    matplotlib pandas seaborn && \
    /opt/conda/envs/tensorflow-gpu/bin/python -m ipykernel install --name tensorflow-gpu --display-name "tensorflow-gpu"
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
