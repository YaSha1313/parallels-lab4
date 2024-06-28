#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --gpus=1
#SBATCH --time=00:01:00
#SBATCH --output=lab4_cuda%j.log

echo "Date = $(date)"
echo "Host = $(hostname -s)"
echo "WorkDir = $(pwd)"
echo ""
echo "Number of Nodes Allocated = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated = $SLURM_NTASKS"
echo "Numbers of Cores/Task Allocated = $SLURM_CPUS_PER_TASK"

module load CUDA

srun /home/yaasharandak/lab4/cuda_prog < input.txt
