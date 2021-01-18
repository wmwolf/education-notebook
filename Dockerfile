FROM jupyter/scipy-notebook:d979fa1b8c4a

# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.

# The conda-forge channel is already present in the system .condarc file, so there is no need to
# add a channel invocation in any of the next commands.

# Add nbgrader 0.5.5 to the image
# More info at https://nbgrader.readthedocs.io/en/stable/

# First install some missing dependencies
# Note: there is no need to install the "jupyter" metapackage because all the needed
# pieces for nbgrader funtionality are already installed by the bootstraped image.
RUN conda install fuzzywuzzy --yes

# Get nose for running more interesting tests in nbgrader notebooks
RUN conda install nose --yes

# Add RISE 5.4.1 to the mix as well so user can show live slideshows from their notebooks
# More info at https://rise.readthedocs.io
# Note: Installing RISE with --no-deps because all the neeeded deps are already present.
RUN conda install rise --no-deps --yes

# Then install nbgrader with --no-deps because all the neeeded deps are already present.
# Additionally, latest nbgrader release is pinging an old ipython version breaking stuff.
# Note: Eventually, when things get fixed upstream we can remove the previous installation
# of "fuzzywuzzy" and remove the --no-deps flag.
# RUN conda install nbgrader --no-deps --yes


# ng share: inspired by https://github.com/LibreTexts/ngshare/blob/master/testing/install_z2jh/Dockerfile-singleuser

# Since we're using ngshare, we need the (as of 2021-01-18) unreleased v0.7.0
# of nbgrader.
RUN python3 -m pip install git+https://github.com/jupyter/nbgrader.git@5a81fd5 && \
    jupyter nbextension install --symlink --sys-prefix --py nbgrader && \
    jupyter nbextension enable --sys-prefix --py nbgrader && \
    jupyter serverextension enable --sys-prefix --py nbgrader

# install ngshare_exchange, so nbgrader has a way to communicate between
# different k8s pods (teacher to student, student to teacher)
RUN python3 -m pip install ngshare_exchange

# Configure nbgrader
# COPY nbgrader_config.py /etc/jupyter/nbgrader_config.py

