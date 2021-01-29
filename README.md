# education-notebook

**education-notebook** is an education-focused Jupyter Docker Stack image
maintained by the community. 

### This particular docker stack image is a fork of the official one, `umsimads/education-notebook`.

The impetus of this fork was three-fold:

- Switch to using `scipy-notebook` instead of `datascience-notebook` since I have no need for R, Julia, etc.
- Use a more updated base image than what was originally available so that a more updated version of `nbgrader` was available.
- Add `nbgitpuller` to synchronize handouts (not to be turned in)

## What is education-notebook

This `education-notebook` image adds RISE and nbgrader packages to the official
Jupyter docker stacks' 
[`scipy-notebook`](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook) image.

[RISE](https://rise.readthedocs.io) gives educators a great tool for presenting
notebooks and allows the instructor to interact with the notebook while teaching.

[nbgrader](https://nbgrader.readthedocs.io) offers grading capabilities as well
as notebook assignment distribution and collection.

[nbgitpuller](https://github.com/jupyterhub/nbgitpuller) provides a way to provide synchronization of a git repositiory without the user ever having to interact with git.



<!-- ## Try it on Binder

Click on the following badge to launch a notebook on the `https://mybinder.org` service.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/umsi-mads/education-notebook/master)
 -->