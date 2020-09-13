ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Carlos Colon <webteckie@gmail.com>"

RUN conda install -c conda-forge jupytext
