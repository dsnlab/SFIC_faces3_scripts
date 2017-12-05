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

#module load prl afni

# Set paths and variables
# ------------------------------------------------------------------------------------------
# paths
rx_dir='/projects/dsnlab/shared/SFIC_Faces3/fMRI/analysis/rx/AFNI_masked/allAff' #RX output directory

# variables
rx_models=(age_cub, pds_cub, test_cub)
f_threshs=(10.91 10.92 10.91)
c_threshs=(29 29 29)

#extra_models=(pds_age logtest_age)
#extra_f_threshs=(10.92 10.91)
#extra_c_threshs=(29 26)

# sub-bricks for effects
dev=1
dev2=2
dev3=3
gender=4
affect=5
dev_gender=6
dev2_gender=7
dev3_gender=8
dev_affect=9
dev2_affect=10
dev3_affect=11
gender_affect=12
dev_gender_affect=13
dev2_gender_affect=14
dev3_gender_affect=15

#main_age=1
#gender_age=2
#main2_age=4
#mainGender_age=6
#main2Gender_age=9

# Save maps, masks, tables. Convert to niftis
# -------------------------------------------------------------------------------------------------

array1=( "${rx_models[@]}" )
array2=( "${f_threshs[@]}" )
array3=( "${c_threshs[@]}" )
array4=( "${extra_models[@]}" )
array5=( "${extra_f_threshs[@]}" )
array6=( "${extra_c_threshs[@]}" )

cd $rx_dir
for index in ${!array1[*]}; do 
	cd allAff_${array1[$index]}
	echo ${array1[$index]}, ${array3[$index]}, ${array2[$index]}
	echo effects: dev [$dev], dev2 [$dev2], dev3 [$dev3], gender [$gender], affect $affect, 
	dev_gender $dev_gender, dev2_gender $dev2_gender, dev3_gender $dev3_gender,
	dev_affect $dev_affect, dev3_affect $dev3_affect, dev3_affect $dev3_affect, gender_affect $gender_affect,
	dev_gender_affect $dev_gender_affect, dev2_gender_affect $dev2_gender_affect, dev3_gender_affect $dev3_gender_affect

  	3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $main -1tindex $main -prefix ${array1[$index]} eachAff_${array1[$index]}+tlrc
	3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $gender -1tindex $gender -prefix gender eachAff_${array1[$index]}+tlrc
	3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $main2 -1tindex $main2 -prefix ${array1[$index]}2 eachAff_${array1[$index]}+tlrc
	3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $mainGender -1tindex $mainGender -prefix ${array1[$index]}.gender eachAff_${array1[$index]}+tlrc
	3dmerge -dxyz=1 -1clust 1 ${array3[$index]} -1thresh ${array2[$index]} -1dindex $main2Gender -1tindex $main2Gender -prefix ${array1[$index]}2.gender eachAff_${array1[$index]}+tlrc

	3dclust -savemask ${array1[$index]}_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} eachAff_${array1[$index]}+tlrc.[${main}] > ${array1[$index]}_clust.txt
	3dclust -savemask gender_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} eachAff_${array1[$index]}+tlrc.[${gender}] > gender_clust.txt
	3dclust -savemask ${array1[$index]}2_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} eachAff_${array1[$index]}+tlrc.[${main2}] > ${array1[$index]}2_clust.txt
	3dclust -savemask ${array1[$index]}.gender_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} eachAff_${array1[$index]}+tlrc.[${mainGender}] > ${array1[$index]}.gender_clust.txt
	3dclust -savemask ${array1[$index]}2.gender_clust -orient LPI -noabs -1thresh ${array2[$index]} -NN3 ${array3[$index]} eachAff_${array1[$index]}+tlrc.[${main2Gender}] > ${array1[$index]}2.gender_clust.txt
	
	3dAFNItoNIFTI -prefix ${array1[$index]} ${array1[$index]}+tlrc["0"]
	3dAFNItoNIFTI -prefix gender gender+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}2 ${array1[$index]}2+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}.gender ${array1[$index]}.gender+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}2.gender ${array1[$index]}2.gender+tlrc["0"]
	
	3dAFNItoNIFTI -prefix ${array1[$index]}_clust ${array1[$index]}_clust+tlrc["0"]
	3dAFNItoNIFTI -prefix gender_clust gender_clust+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}2_clust ${array1[$index]}2_clust+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}.gender_clust ${array1[$index]}.gender_clust+tlrc["0"]
	3dAFNItoNIFTI -prefix ${array1[$index]}2.gender_clust ${array1[$index]}2.gender_clust+tlrc["0"]
	
	echo -

	for index2 in ${!array4[*]}; do
		if [ -a $rx_dir/eachAff_${array1[$index]}/eachAff_${array4[$index2]}+tlrc.BRIK ]; then
			echo ${array4[$index2]}, ${array6[$index2]}, ${array5[$index2]}
			echo effects: ${array1[$index]} [$main_age], gender [$gender_age], ${array1[$index]}2 [$main2_age], ${array1[$index]}.gender [$mainGender_age], ${array1[$index]}2.gender [$main2Gender_age]

			3dmerge -dxyz=1 -1clust 1 ${array6[$index2]} -1thresh ${array5[$index2]} -1dindex $main_age -1tindex $main_age -prefix ${array4[$index2]} eachAff_${array4[$index2]}+tlrc
			3dmerge -dxyz=1 -1clust 1 ${array6[$index2]} -1thresh ${array5[$index2]} -1dindex $main2_age -1tindex $main2_age -prefix ${array1[$index]}2_age eachAff_${array4[$index2]}+tlrc
			3dmerge -dxyz=1 -1clust 1 ${array6[$index2]} -1thresh ${array5[$index2]} -1dindex $mainGender_age -1tindex $mainGender_age -prefix ${array1[$index]}.gender_age eachAff_${array4[$index2]}+tlrc
			3dmerge -dxyz=1 -1clust 1 ${array6[$index2]} -1thresh ${array5[$index2]} -1dindex $main2Gender_age -1tindex $main2Gender_age -prefix ${array1[$index]}2.gender_age eachAff_${array4[$index2]}+tlrc
			
			3dclust -savemask ${array4[$index2]}_clust -orient LPI -noabs -1thresh ${array5[$index2]} -NN3 ${array6[$index2]} eachAff_${array4[$index2]}+tlrc.[${main_age}] > ${array4[$index2]}_clust.txt
			3dclust -savemask ${array1[$index]}2_age_clust -orient LPI -noabs -1thresh ${array5[$index2]} -NN3 ${array6[$index2]} eachAff_${array4[$index2]}+tlrc.[${main2_age}] > ${array1[$index]}2_age_clust.txt
			3dclust -savemask ${array1[$index]}.gender_age_clust -orient LPI -noabs -1thresh ${array5[$index2]} -NN3 ${array6[$index2]} eachAff_${array4[$index2]}+tlrc.[${mainGender_age}] > ${array1[$index]}.gender_age_clust.txt
			3dclust -savemask ${array1[$index]}2.gender_age_clust -orient LPI -noabs -1thresh ${array5[$index2]} -NN3 ${array6[$index2]} eachAff_${array4[$index2]}+tlrc.[${main2Gender_age}] > ${array1[$index]}2.gender_age_clust.txt
			
			3dAFNItoNIFTI -prefix ${array4[$index2]} ${array4[$index2]}+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}2_age ${array1[$index]}2_age+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}.gender_age ${array1[$index]}.gender_age+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}2.gender_age ${array1[$index]}2.gender_age+tlrc["0"]
			
			3dAFNItoNIFTI -prefix ${array4[$index2]}_clust ${array4[$index2]}_clust+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}2_age_clust ${array1[$index]}2_age_clust+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}.gender_age_clust ${array1[$index]}.gender_age_clust+tlrc["0"]
			3dAFNItoNIFTI -prefix ${array1[$index]}2.gender_age_clust ${array1[$index]}2.gender_age_clust+tlrc["0"]
		fi
	done
	cd ../
	echo done
	echo -------------------------------------------
done

