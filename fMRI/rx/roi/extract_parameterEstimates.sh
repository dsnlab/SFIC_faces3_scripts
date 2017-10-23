#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=extractParams
#SBATCH --output=output/extractParams.log
#SBATCH --error=output/extractParams_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

# This script extracts mean parameter estimates and SDs within an ROI or parcel
# from subject FX condition contrasts (condition > rest) for each wave. Output is 
# saved as a text file in the output directory.

module load prl afni

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
rois=(lAmyg rAmyg lAcc rAcc lHippo rHippo)

# Extract mean parameter estimates and SDs for functional clusters for each subject, wave, contrast
# -------------------------------------------------------------------------------------------------

# Note: have chosen to extract 20 clusters for each mask. Not all masks will have this many, and 
# some may have more. 

cd $con_dir

for rx_model in ${rx_models[@]}; do
	for sub in ${subjects[@]}; do 
		for wave in ${waves[@]}; do 
			for con in ${fx_cons[@]}; do 
				for num in {1..30}; do 
					if [ -a sub-L0${sub}_ses-${wave}_${con}.nii ]; then
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}2_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}2.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/gender_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_gender_from_${rx_model}.txt
						echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}.gender_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}.gender.txt	 
					
						for extra_model in "${extra_models[@]}"; do
							if [ -a $rx_dir/eachAff_${rx_model}/eachAff_${extra_model}+tlrc.BRIK ]; then
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${extra_model}_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${extra_model}.txt
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}2_age_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}2_age.txt
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}.gender_age_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}.gender_age.txt	 
								echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange $num $num -mask $rx_dir/eachAff_${rx_model}/${rx_model}2.gender_age_clust+tlrc $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${rx_model}2.gender_age.txt	 
							fi
						done
					fi
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
					echo ${sub} ${wave} ${con} ${num} `3dmaskave -sigma -quiet -mrange 1 1 -mask $output_dir/${roi}_75_resamp.nii $con_dir/sub-L0${sub}_ses-${wave}_${con}.nii` >> $output_dir/paramEstimates_${roi}_${rx_model}.txt
				fi
			done
		done
	done
done
