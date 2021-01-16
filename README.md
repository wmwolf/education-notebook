# education-notebook

**education-notebook** is an education-focused Jupyter Docker Stack image
maintained by the community. 

### This particular docker stack image is a fork of the official one, `umsimads/education-notebook`.

The impetus of this fork was two-fold:

- Switch to using `scipy-notebook` instead of `datascience-notebook` since I have no need for R, Julia, etc.
- Use a more updated base image than what was originally available so that a more updated version of `nbgrader` was available.

## What is education-notebook

This `education-notebook` image adds RISE and nbgrader packages to the official
Jupyter docker stacks' 
[`scipy-notebook`](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook) image.

[RISE](https://rise.readthedocs.io) gives educators a great tool for presenting
notebooks and allows the instructor to interact with the notebook while teaching.

[nbgrader](https://nbgrader.readthedocs.io) offers grading capabilities as well
as notebook assignment distribution and collection.

The `education-notebook` contains Python, R, and Julia as well as frequently
used data science libraries.

<!-- ## Try it on Binder

Click on the following badge to launch a notebook on the `https://mybinder.org` service.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/umsi-mads/education-notebook/master)
 -->