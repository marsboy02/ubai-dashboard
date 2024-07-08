#!/bin/bash
#SBATCH --job-name=enroll node-exporter
#SBATCH --nodes=ALL
#SBATCH --ntasks-per-node=1
#SBATCH --time=04:00:00
#SBATCH --output=%x_%j.out

# 노드에서 실행할 명령어
srun bash -c 'git clone https://github.com/marsboy02/ubai-dashboard.git && ./ubai-dashboard/node-exporter-init.sh'
