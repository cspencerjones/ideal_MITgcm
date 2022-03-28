#!/bin/bash
##ENVIRONMENT SETTINGS; CHANGE WITH CAUTION
#SBATCH --export=NONE        #Do not propagate environment
#SBATCH --get-user-env=L     #Replicate login environment
  
##NECESSARY JOB SPECIFICATIONS
#SBATCH --job-name=mitgcm-ideal     #Set the job name to "JobExample1"
#SBATCH --time=04:00:00            #Set the wall clock limit to 1hr and 30min
#SBATCH --ntasks=32                 #Request 1 task
#SBATCH --ntasks-per-node=8
#SBATCH --mem=2560M                #Request 2560MB (2.5GB) per node
#SBATCH --output=Example1Out.%j    #Send stdout/err to "Example1Out.[jobID]"

#First Executable Line
module load intel/2020b
module load netCDF-Fortran/4.5.3

mpirun -np 32 /scratch/user/spencerjones/try_MITgcm/run_shape/mitgcmuv
