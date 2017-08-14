#!/bin/bash
#
# This script runs FreeSurfer 6.0 recon-all
# and extracts the data, which includes the
# all morphological measurements at vertex
# and parcellated scales. Run this script
# by running the batch_reconall.sh file
# and calling on subject_list.txt
#

module load fsl

echo ${SUBID}

cd /projects/dsnlab/SFIC_Faces3/fMRI/subjects/${SUBID}/

	for wave in ses-*; do
		echo "${wave}"
		cd "$wave"

		# betting structural image
		cd structurals
		echo "structurals"
		fn=hires*
		#mv sub* hires.nii
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

echo "done"
