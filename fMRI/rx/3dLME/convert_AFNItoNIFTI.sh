#!/bin/bash

# Define path to AFNI results directory, model names, and contrast numbers
# ------------------------------------------------------------------------------------------
resultsDir=/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI
models=(eachAff_age eachAff_pds eachAff_logtest)

# Convert AFNI contrasts to nifti files
# ------------------------------------------------------------------------------------------
# AFNI documentation https://afni.nimh.nih.gov/pub/dist/doc/program_help/3dAFNItoNIFTI.html
for model in  "${models[@]}" ; do
	3dAFNItoNIFTI -prefix age eachAff_age+tlrc["1"]
	3dAFNItoNIFTI -prefix "${resultsDir}"/age.self-other_"${model}" "${resultsDir}"/"${model}"+tlrc["1"]
	3dAFNItoNIFTI -prefix "${resultsDir}"/age2.self-other_"${model}" "${resultsDir}"/"${model}"+tlrc["1"]
done
