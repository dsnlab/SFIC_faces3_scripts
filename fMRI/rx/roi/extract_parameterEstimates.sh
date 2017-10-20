#!/bin/bash

# This script extracts mean parameter estimates and SDs within an ROI or parcel
# from subject FX condition contrasts (condition > rest) for each wave. Output is 
# saved as a text file in the output directory.

# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
rx_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked' #RX output directory
con_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/FX_models' #fx contrast directory
output_dir='/projects/dsnlab/SFIC_Faces3/fMRI/analysis/rx/roi' #roi output directory

# variables
subjects=`cat /projects/dsnlab/SFIC_Faces3/SFIC_faces3_scripts/fMRI/rx/3dLME/subject_list.csv`
waves=(wave1 wave2 wave3) #waves or task names
fx_cons=(con_0001 con_0002 con_0003 con_0004 con_0005) #fx con files to extract from
rx_models=(age pds logtest)
extra_models=(pds_age logtest_age)
rois=(lAmyg, rAmyg, lAcc, rAcc, lHippo, rHippo)

# Extract mean parameter estimates and SDs for functional clusters for each subject, wave, contrast
# -------------------------------------------------------------------------------------------------

# Note: have chosen to extract 20 clusters for each mask. Not all masks will have this many, and 
# some may have more. 

cd $con_dir

for rx_model in ${rx_models[@]}; do
	for sub in ${subjects[@]}; do 
		for wave in ${waves[@]}; do 
			for con in ${fx_cons[@]}; do 
				for num in {1..20}; do 
					if [ -a sub-L0${sub}_ses-${wave}_${con}.nii ]; then
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${rx_model}+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${rx_model}_2+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}2.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${rx_model}_Gender+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}Gender.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${rx_model}_2Gender+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}2Gender.txt	 
					fi
				done
			done
		done
	done
done

for rx_model in ${rx_models[@]}; do
	for extramodel in "${extramodels[@]}"; do
 		if [ -a $rx_dir/eachAff_${rx_model}/eachAff_${extramodel}+tlrc.BRIK ]; then
			for sub in ${subjects[@]}; do 
				for wave in ${waves[@]}; do 
					for con in ${fx_cons[@]}; do 
						for num in {1..20}; do 
							if [ -a sub-L0${sub}_ses-${wave}_${con}.nii ]; then
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${extra_model}+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${extra_model}.txt
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${extra_model}_2+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${extra_model}_2.txt
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${extra_model}_Gender+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${extra_model}_Gender.txt
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/Clust_mask_${extra_model}_2Gender+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${extra_model}_2Gender.txt	 
							fi
						done
					done
				done
			done
		done
	done
done


# Extract mean parameter estimates and SDs for anatomical ROIs for each subject, wave, contrast
# ---------------------------------------------------------------------------------------------

cd $con_dir

for roi in ${rois[@]}; do 
	for sub in ${subjects[@]}; do 
		for wave in ${waves[@]}; do 
			for con in ${fx_cons[@]}; do 
				if [ -a sub-L0${sub}_ses-${wave}_${con}.nii ]; then
					echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange 1 1 -mask $output_dir/${roi}_75.nii $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${roi}_${rx_model}.txt
				fi
			done
		done
	done
done