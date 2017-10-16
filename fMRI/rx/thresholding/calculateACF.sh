#!/bin/bash

# This script calculates the smoothness (acf parameters) of RX residual files
# using 3dFWHMx in AFNI.

module load prl afni

# RX directories (where the residual files are)
rxDir=/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/

# AFNI 3dLME model names
models=(allAff_age allAff_pds_female allAff_pds_male allAff_logtest_female allAff_logtest_male eachAff_age eachAff_pds_female eachAff_pds_male eachAff_logtest_female eachAff_logtest_male)

# Estimate acf parameters for AFNI 3dLME models and save this output
# ------------------------------------------------------------------------------------------
cd "${rxDir}"
 model in "${models[@]}"; do
	cd $model
	3dFWHMx -acf -mask "${model}"+tlrc[0] "${model}"_residuals+tlrc > "${model}"_acf.txt
	cd ../
done

