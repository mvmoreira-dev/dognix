{ pkgs, ... }:

pkgs.python3.withPackages (ps: with ps; [
  pip
  setuptools
  wheel

  numpy
  matplotlib
  opencv4

  requests
  ipython
  pytest
])
