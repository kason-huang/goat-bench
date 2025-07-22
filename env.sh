#!/bin/bash

export conda_env_name=goat
export TENSORBOARD_DIR="./result/tensorboard/"
export CHECKPOINT_DIR="./result/checkpoint/"
export SKILL_CHAIN_CHECKPOINT_DIR="./result/checkpoint/sense_act_nn_skill_chain"
export DATA_PATH="/root/workspace/lab/goat-bench/data/datasets/goat_bench/hm3d/v1/"
export split="val_seen"
export eval_ckpt_path_dir="/root/workspace/lab/goat-bench/data/goat-assets/checkpoints/sense_act_nn_monolithic"
export skill_chain_eval_ckpt_path_dir="/root/workspace/lab/goat-bench/data/goat-assets/checkpoints/sense_act_nn_skill_chain"
