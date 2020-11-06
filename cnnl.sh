#!/bin/bash
#SBATCH -J lmp
#SBATCH -p cn_nl
#SBATCH -N 3
#SBATCH -o 1.out
#SBATCH -e 2.err
#SBATCH --no-requeue
#SBATCH -A liufeng_g1
#SBATCH --qos=liufengcnnl
#SBATCH --ntasks-per-node=28
#SBATCH --exclusive

hosts=`scontrol show hostname $SLURM_JOB_NODELIST`; echo $hosts
source /appsnew/source/lammps-7Aug19-intel2018mpi-add.sh
mpirun -np $SLURM_NTASKS lmp -in in.CHO