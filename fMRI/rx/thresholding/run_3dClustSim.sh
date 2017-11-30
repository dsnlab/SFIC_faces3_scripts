#!/bin/bash

# This script runs 3dClustSim for each model using acf parameters generated by calculateACF.sh

module unload intel
module load gcc/6.4 
module load afni

# Specify variables
# ------------------------------------------------------------------------------------------

# RX directories (where model masks can be found)
afniDir=/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/allAff

# Output directory to store thresholding info
outputDir=/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/thresholding/allAff

# Run 3dClustSim
# ------------------------------------------------------------------------------------------

3dClustSim -mask "${afniDir}"/age/age+tlrc[0] -acf 0.49382  4.85781  12.1338 > "${outputDir}"/age.txt

3dClustSim -mask "${afniDir}"/age_sq/age_sq+tlrc[0] -acf 0.501962  4.8434  12.3076 > "${outputDir}"/age_sq.txt

3dClustSim -mask "${afniDir}"/age_cub/age_cub+tlrc[0] -acf 0.496159  4.83218  12.2551 > "${outputDir}"/age_cub.txt
