#!/bin/bash
. ~/.bashrc

# This script calculates the smoothness (acf parameters) of RX residual files
# using 3dFWHMx in AFNI and averages across all files by executing calculateACF.R
# The average acf parameters will be saved as SPM_acf.txt in the code directory.

# It also calculates the acf parameters for the AFNI 3dLME models and saves the 
# parameters to text files in the code directory.

# Specify variables
# ------------------------------------------------------------------------------------------
# thresholding code directory
codeDir=/projects/dsnlab/SFIC_Faces3/SFIC_faces3_scripts/fMRI/rx/thresholding

# RX directories (where the residual files are)
rxDir=/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/

# AFNI 3dLME model names
models=(allAff_age eachAff_age)

# Estimate acf parameters for AFNI 3dLME models and save this output
# ------------------------------------------------------------------------------------------
cd "${rxDir}"

for model in "${models[@]}"; do
	cd $model
	3dFWHMx -acf -mask "${model}"+tlrc[0] "${model}"_residuals+tlrc > "${rxDir}"/output/"${model}"_acf.txt
	cd ../
done

# Execute calculateACF.R
# ------------------------------------------------------------------------------------------
#Rscript "${codeDir}"/calculateACF.R "${spmDir}"/residuals.txt > "${rxDir}"/thresholding/acf.txt
