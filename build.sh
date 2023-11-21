#!/bin/bash

# module load miniconda
module load anaconda3-2020.07-gcc-9.3.0-myrjwlf

# Creating the conda environment
conda create -n test_build_2point2 -y

# Activating the environment
conda activate test_build_2point2

# Setting up the channels
conda config --env --add channels pytorch
conda config --env --add channels conda-forge
conda config --env --add channels defaults
conda config --env --add channels nvidia

# Installing dependencies one by one
conda install -y python=3.9 
conda install -y pandas 
conda install -y numpy 
conda install -y scikit-learn 
conda install -y pytorch=2.1.0 
conda install -y cudatoolkit=11.8 
