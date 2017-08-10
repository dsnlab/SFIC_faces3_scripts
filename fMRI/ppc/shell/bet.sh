#!/bin/bash
#Created by NV 07/31/2017

#Moves SFIC faces and anat MRI data from BIDS compatible structure to old fMRI format
#Gunzips all images

#set up fsl
module load fsl

#set paths
projectdir="/projects/dsnlab/SFIC_Faces3"
nonbidsdir="fMRI/subjects"

cd "$projectdir"/"$nonbidsdir"
for sub in sub-*; do
	echo "${sub}"
	cd $sub

	for wave in ses-*; do
		echo "${wave}"
		cd "$wave"

		# betting structural image
		cd structurals
		echo "structurals"
		fn=*hires*
		mv sub* hires.nii
		bet ${fn} b_hires -R
		gunzip b_hires.nii.gz            
		cd ../

		# betting all functional images (and also converting vol0000.nii to facesOB_0000.nii)
		cd facesOB
		echo "facesOB"

		for image in $(ls *.nii); do
			volnum="$(echo "${image}" | sed 's/[^0-9]//g')"
			mv ${image} facesOB_"$volnum".nii
			bet facesOB_"$volnum".nii b_facesOB_"$volnum" -R            
			gunzip b_facesOB_"$volnum"*
		done

		cd ../../
	done	
	
	cd ../
done