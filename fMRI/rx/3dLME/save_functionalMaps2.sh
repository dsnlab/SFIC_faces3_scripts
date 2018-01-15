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
rx_dir='/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/eachAff' #RX output directory

# variables
rx_models=(pds2)
t_threshs=(3.291 3.291 3.291)
c_threshs=(32 32 32)

#sub_bricks=(intercept dev dev2 dev3 gender affect dev_gender dev2_gender dev3_gender dev_affect dev2_affect dev3_affect gender_affect dev_gender_affect dev2_gender_affect dev3_gender_affect)
#sub_bricks=(intercept dev1F dev2F dev3F genderF affectF dev1_genderF dev2_genderF dev3_genderF dev1_affectF dev2_affectF dev3_affectF gender_affectF dev1_gender_affectF dev2_affect_genderF dev3_gender_affectF dev1 dev1Z dev2 dev2Z dev3 dev3Z dev1_gender dev1_genderZ dev2_gender dev2_genderZ dev3_gender dev3_genderZ)
sub_bricks=(intercept dev1F dev2F genderF affectF dev1_genderF dev2_genderF dev1_affectF dev2_affectF gender_affectF dev1_gender_affectF dev2_affect_genderF dev1 dev1Z dev2 dev2Z dev1_gender dev1_genderZ dev2_gender dev2_genderZ)

# Save maps, masks, tables. Convert to niftis
# -------------------------------------------------------------------------------------------------

array1=( "${rx_models[@]}" )
array2=( "${t_threshs[@]}" )
array3=( "${c_threshs[@]}" )
array4=( "${sub_bricks[@]}" )

for index in ${!array1[*]}; do 

	cd $rx_dir
	cd ${array1[$index]}
	echo ${array1[$index]}, ${array3[$index]}, ${array2[$index]}
	
	mod=$(echo ${array1[$index]:0:-1})
	#mod=$(echo ${array1[$index]})
	
	list=(12 14 16 18)
	for num in ${list[@]}; do
		echo $num
		num2=$((num + 1))
#		3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $num -1tindex $num -prefix ${array4[$num]} allAff_${array1[$index]}+tlrc
# 		3dclust -savemask ${array4[$num]}_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} -1dindex 0 -1tindex 0 eachAff_${mod}+tlrc.[${num2}] > ${array4[$num]}_clust.txt
		3dclust -savemask ${array4[$num]}_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} -1dindex 0 -1tindex 0 ${mod}+tlrc.[${num2}] > ${array4[$num]}_clust_001.txt

#		3dAFNItoNIFTI -prefix ${array4[$num]} ${array4[$num]}+tlrc["0"]
		3dAFNItoNIFTI -prefix ${array4[$num]}_clust ${array4[$num]}_clust+tlrc["0"]
	done
	
	echo done
	echo -------------------------------------------

done

