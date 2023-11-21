#!/bin/bash

# module load miniconda
module load anaconda3-2020.07-gcc-9.3.0-myrjwlf

# Creating the conda environment
conda create -n test_build_2point3 -y

# Activating the environment
conda activate test_build_2point3

# Setting up the channels
# have some duplicates to make sure nvidia and pytorch are top of stack
conda config --env --add channels pytorch
conda config --env --add channels conda-forge
conda config --env --add channels defaults
conda config --env --add channels nvidia
conda config --env --add channels pytorch

# Installing dependencies one by one
conda install -y python=3.9 
conda install -y pandas 
conda install -y numpy 
conda install -y scikit-learn 
conda install -y pytorch=2.1.0 
conda install -y cudatoolkit=11.8 

# just to check....
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia


# great, that build worked! so, now, grab what I need for the project

conda install -y fire
conda install -y fairscale

pip install comet_ml

conda install -y sentencepiece
