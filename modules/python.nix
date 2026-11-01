{ pkgs, ... }:

pkgs.python3.withPackages (ps: with ps; [
  pip
  setuptools
  wheel

  numpy
  matplotlib

  requests
  ipython
  pytest
])
