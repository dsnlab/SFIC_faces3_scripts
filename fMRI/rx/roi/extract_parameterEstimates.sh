#!/bin/bash
. ~/.bashrc

# This script extracts mean parameter estimates and SDs within an ROI or parcel
# from subject FX condition contrasts (condition > rest) for each wave. Output is 
# saved as a text file in the output directory.

# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
rx_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI' #RX output directory
con_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI/FX_models' #fx contrast directory
output_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/roi' #roi output directory

# variables
subjects=`cat /projects/dsnlab/SFIC_Faces3/SFIC_faces3_scripts/fMRI/rx/3dLME/subject_list.csv`
waves=(t1 t2 t3) #waves or task names
fx_cons=(con_0001 con_0002 con_0003 con_0004 con_0005) #fx con files to extract from
rx_model=(eachAff_age)

# Extract mean parameter estimates and SDs for each subject, wave, contrast, and roi/parcel
# ------------------------------------------------------------------------------------------

cd $con_dir
for sub in ${subjects[@]}; do 
	for wave in ${waves[@]}; do 
		for con in ${fx_cons[@]}; do 
			for num in {1..20}; do 
					echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rxdir/$rx_model/Clust_mask+tlrc $con_dir/${sub}_${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}.txt
			done
		done
	done
done