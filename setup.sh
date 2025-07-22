#!/bin/bash

set -x
# Record of how the environment was set up
# Create conda environment. Mamba is recommended for faster installation.
conda_env_name=goat
#mamba create -n $conda_env_name python=3.7 cmake=3.14.0 -y
mamba create -n $conda_env_name python=3.8 cmake
#mamba install -n $conda_env_name \
#  habitat-sim=0.2.3 headless pytorch cudatoolkit=11.3 \
#  -c pytorch -c nvidia -c conda-forge -c aihabitat -y
mamba activate $conda_env_name
mamba install habitat-sim=0.2.3 -c conda-forge -c aihabitat -y

# Install this repo as a package
pip install -e .

# Install habitat-lab
git clone --branch v0.2.3 git@github.com:facebookresearch/habitat-lab.git
cd habitat-lab
pip install -e habitat-lab
pip install -e habitat-baselines
cd ..

pip install -r requirements.txt
pip install git+https://github.com/openai/CLIP.git

pip install git+https://github.com/shi0rik0/LAVIS.git

git clone  https://github.com/facebookresearch/eai-vc.git
cd eai-vc
pip install -e vc_models
cd ..
pip install opencv-python==4.8.0.74 "huggingface_hub<0.26.0"



