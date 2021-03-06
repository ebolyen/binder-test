FROM andrewosh/binder-python-3.5

MAINTAINER Greg Caporaso <gregcaporaso@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y Xvfb x11-utils

USER main

# Install IAB
RUN /bin/bash -c "conda install --yes -c biocore scikit-bio=0.4.2 jupyter seaborn pandas markdown2 networkx 'pyqt<5.0.0'"
RUN /bin/bash -c "pip install https://github.com/gregcaporaso/An-Introduction-To-Applied-Bioinformatics/archive/master.zip"

ENTRYPOINT xvfb-run
