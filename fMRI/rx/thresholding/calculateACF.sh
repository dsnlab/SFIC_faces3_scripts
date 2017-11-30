#!/bin/bash

# This script calculates the smoothness (acf parameters) of RX residual files
# using 3dFWHMx in AFNI.

module unload intel
module load gcc/6.4 
module load afni

# RX directories (where the residual files are)
rxDir=/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/allAff

# AFNI 3dLME model names
models=(age age_sq age_cub)

# Estimate acf parameters for AFNI 3dLME models and save this output
# ------------------------------------------------------------------------------------------
cd "${rxDir}"
for model in "${models[@]}"; do
	cd $model
	3dFWHMx -acf -mask "${model}"+tlrc[0] "${model}"_residuals+tlrc > "${model}"_acf.txt
	cd ../
done

# ------------------------------------------------------------------------------------------
# If I'm running puberty models controlling for age:

#extramodels=(eachAff_logtest_age)
#extramodels=(eachAff_pds_age eachAff_logtest)

#cd "${rxDir}"
#for model in "${models[@]}"; do
# 	cd $model
# 	for extramodel in "${extramodels[@]}"; do
# 		if [ -a "${extramodel}"+tlrc.BRIK ]; then
#		3dFWHMx -acf -mask "${extramodel}"+tlrc[0] "${extramodel}"_residuals+tlrc > "${extramodel}"_acf.txt
#		fi
#	done
#	cd ../
#done