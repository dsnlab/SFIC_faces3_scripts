#!/bin/bash
#
# This batch file calls on your subject
# list (named subject_list.txt). And 
# runs the job_reconall.sh file for 
# each subject. It saves the ouput
# and error files in their specified
# directories.
#
# Set your study
STUDY=/projects/dsnlab/SFIC_Faces3

# Set subject list
SUBJLIST=`cat subject_list.txt`

# 
for SUBJ in $SUBJLIST
do
 sbatch --export SUBID=${SUBJ} --job-name bet --mem-per-cpu=8G --time=20:00:00 --cpus-per-task=1 -o "${STUDY}"/SFIC_faces3_scripts/fMRI/ppc/shell/schedule_spm_jobs/output/"${SUBJ}"_bet_output.txt -e "${STUDY}"/SFIC_faces3_scripts/fMRI/ppc/shell/schedule_spm_jobs/output/"${SUBJ}"_bet_error.txt "${STUDY}"/SFIC_faces3_scripts/fMRI/ppc/shell/schedule_spm_jobs/job_bet.sh
done
