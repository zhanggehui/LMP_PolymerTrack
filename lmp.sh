#!/bin/bash
#SBATCH -J lmp
#SBATCH -p cn-long
#SBATCH -N 3
#SBATCH -o 1.out
#SBATCH -e 2.err
#SBATCH --no-requeue
#SBATCH -A liufeng_g1
#SBATCH --qos=liufengcnl
#SBATCH --ntasks-per-node=20
#SBATCH --exclusive

hosts=`scontrol show hostname $SLURM_JOB_NODELIST`; echo $hosts


source /appsnew/source/lammps-7Aug19-intel2018mpi-add.sh
mpirun -np $SLURM_NTASKS lmp -in in.CHO