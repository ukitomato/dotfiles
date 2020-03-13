#!/bin/zsh
conda create -n Python3 python=3.7 anaconda tensorflow keras pandas-profiling pyserial && \
conda activate Python3 && \
pip install umap-learn && \
conda deactivate  && \
conda create -n OnWristRecognition --clone Python3 python=3.7 && \
conda create -n ProjectMask --clone Python3 python=3.7
