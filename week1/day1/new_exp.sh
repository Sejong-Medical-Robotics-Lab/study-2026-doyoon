#!/bin/bash
# usage: ./new_exp.sh experiment_name
mkdir -p ~/robot_study/experiments/$1/{data,logs,results}
echo "# experiment note: $1 ($(date +%F))" > ~/robot_study/experiments/$1/README.md
echo "experiment folder created: $1"
