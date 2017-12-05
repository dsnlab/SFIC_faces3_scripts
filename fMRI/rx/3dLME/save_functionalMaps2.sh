#!/bin/bash

#SBATCH --job-name=saveMaps
#SBATCH --output=output/saveMaps.log
#SBATCH --error=output/saveMaps_error.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

# This script saves:
# 1. functional maps (after cluster thresholding)
# 2. cluster-ordered thresholded masks (i.e. each voxel within a cluster is given the same number, based on size of cluster)
# 3. table of cluster-thresholded results
# All maps/masks are also converted to niftis

# Load packages
# ------------------------------------------------------------------------------------------

module load prl afni

# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
rx_dir='/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/allAff' #RX output directory

# variables
rx_models=(age_cub pds_cub test_cub)
f_threshs=(10.92 10.92 10.92)
c_threshs=(29 29 33)

sub_bricks=(intercept dev dev2 dev3 gender affect dev_gender dev2_gender dev3_gender dev_affect dev2_affect dev3_affect gender_affect dev_gender_affect dev2_gender_affect dev3_gender_affect)

# Save maps, masks, tables. Convert to niftis
# -------------------------------------------------------------------------------------------------

array1=( "${rx_models[@]}" )
array2=( "${f_threshs[@]}" )
array3=( "${c_threshs[@]}" )
array4=( "${sub_bricks[@]}" )

for index in ${!array1[*]}; do 

	cd $rx_dir
	cd ${array1[$index]}
	echo ${array1[$index]}, ${array3[$index]}, ${array2[$index]}
	
	for num in {1..15}; do
		echo $num
#		3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $num -1tindex $num -prefix ${array4[$num]} allAff_${array1[$index]}+tlrc
  		3dclust -savemask ${array4[$num]}_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} allAff_${array1[$index]}+tlrc.[${num}] > ${array4[$num]}_clust.txt
#		3dAFNItoNIFTI -prefix ${array4[$num]} ${array4[$num]}+tlrc["0"]
		3dAFNItoNIFTI -prefix ${array4[$num]}_clust ${array4[$num]}_clust+tlrc["0"]
	done
	
	echo done
	echo -------------------------------------------

done

