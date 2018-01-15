#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=allAff_pds
#SBATCH --output=output/allAff_pds.log
#SBATCH --error=output/allAff_pds_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

# This script calculates the smoothness (acf parameters) of RX residual files
# using 3dFWHMx in AFNI.

module unload intel
module load gcc/6.4 
module load afni

# RX directories (where the residual files are)
rxDir=/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/eachAff

# AFNI 3dLME model names
models=(age2 pds2)

# Estimate acf parameters for AFNI 3dLME models and save this output
# ------------------------------------------------------------------------------------------
cd "${rxDir}"
for model in "${models[@]}"; do
	cd $model
	mod=$(echo ${model:0:-1})
	3dFWHMx -acf -mask "${mod}"+tlrc[0] "${mod}"_residuals+tlrc > "${model}"_acf.txt
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
