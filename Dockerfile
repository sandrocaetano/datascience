FROM jupyter/datascience-notebook

LABEL Description="Jupyter Octave"

USER root
RUN apt-get update && \
    apt-get install -y gnuplot octave && \
    apt-get clean

USER jovyan
RUN pip install octave_kernel && \
    export OCTAVE_EXECUTABLE=$(which octave)

RUN pip install plotly ipywidgets dash pyDOE2
