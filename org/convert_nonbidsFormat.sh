#!/bin/bash
#Created by NV 07/31/2017

#Moves SFIC faces and anat MRI data from BIDS compatible structure to old fMRI format
#Gunzips all images

#load fsl
module load fsl

#set paths
projectdir="/projects/dsnlab/SFIC_Faces3"
bidsdir="bids_data"
nonbidsdir="fMRI/subjects"


cd "$projectdir"/"$bidsdir"
for sub in sub-*; do
	#subid="$(echo "${sub}" | awk '{print substr($0,0,4)}')"
	echo "${sub}"
	cd $sub

	for wave in ses-*; do
		echo "${wave}"
		cd $wave

		#create nonbids structure
		mkdir -pv "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"
		cd $projectdir/$nonbidsdir/${sub}/${wave}
		#mkdir -v facesIM
		mkdir -v facesOB
		mkdir -v structurals

		#copy files over
		#cp "$projectdir"/"$bidsdir"/"${sub}"/"${wave}"/func/*facesIM* "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesIM/
		cp "$projectdir"/"$bidsdir"/"${sub}"/"${wave}"/func/*facesOB* "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesOB/
		cp "$projectdir"/"$bidsdir"/"${sub}"/"${wave}"/anat/*hires* "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/structurals/

		#convert functional files from 4D to 3D and unzip
		#fslsplit -t "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesIM/*
		cd "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesOB/
		fslsplit sub*
		rm "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesOB/sub*
		gunzip vol*

		#gunzip structurals
		cd "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/structurals/
		gunzip sub*

		cd "$projectdir"/"$bidsdir"/"${sub}"/
	done
	cd ../
	
done




