#!/bin/bash

bash build.sh
sbatch slurm.sbatch

# that created output1.txt, which failed. So, let's try:

conda install -c nvidia cuda-python

# that created output2.txt, which failed. So, let's try:

conda install pytorch pytorch-cuda=11.8 -c pytorch -c nvidia

# which created failed output3.txt.
