#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=acf_tresh
#SBATCH --output=output/acf_thresh.log
#SBATCH --error=output/ach_thresh_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

# This script calculates the smoothness (acf parameters) of RX residual files
# using 3dFWHMx in AFNI and averages across all files by executing calculateACF.R
# The average acf parameters will be saved as SPM_acf.txt in the code directory.

# It also calculates the acf parameters for the AFNI 3dLME models and saves the 
# parameters to text files in the code directory.

module load prl afni

# Specify variables
# ------------------------------------------------------------------------------------------
# thresholding code directory
#codeDir=/projects/dsnlab/SFIC_Faces3/SFIC_faces3_scripts/fMRI/rx/thresholding

# RX directories (where the residual files are)
rxDir=/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/

# AFNI 3dLME model names
models=allAff_pds_female
#models=(allAff_age allAff_pds_female allAff_pds_male allAff_test_female allAff_test_male eachAff_age eachAff_pds_female eachAff_pds_male eachAff_test_female eachAff_test_male)

# Estimate acf parameters for AFNI 3dLME models and save this output
# ------------------------------------------------------------------------------------------
cd "${rxDir}"

for model in "${models[@]}"; do
	cd $model
	3dFWHMx -acf -mask "${model}"+tlrc[0] "${model}"_residuals+tlrc > acf.txt
	cd ../
done

# Execute calculateACF.R
# ------------------------------------------------------------------------------------------
#Rscript "${codeDir}"/calculateACF.R "${spmDir}"/residuals.txt > "${rxDir}"/thresholding/acf.txt
