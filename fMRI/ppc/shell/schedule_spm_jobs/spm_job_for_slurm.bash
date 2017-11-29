#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=spm_job
#SBATCH --output=output/spm_job_%A_%a.out
#SBATCH --error=output/spm_job_%A_%a.err
#SBATCH --cpus-per-task=1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=2000

PARAMFILE=job_paths.tsv

job_path=$(cat $PARAMFILE | head -n $SLURM_ARRAY_TASK_ID | tail -n 1)

echo $SLURM_ARRAY_TASK_ID

module load matlab

ADDITIONALOPTIONS="-singleCompThread"

srun  matlab -nosplash -nodisplay -nodesktop ${ADDITIONALOPTIONS} -r "clear; addpath('/projects/dsnlab/SPM12'); disp('JOB ID: $job_path'); spm_jobman('initcfg'); load $job_path; spm_jobman('run',matlabbatch); exit"
