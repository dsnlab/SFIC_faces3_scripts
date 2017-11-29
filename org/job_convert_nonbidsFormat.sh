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

echo "${SUBID}"

cd "$projectdir"/"$bidsdir"/${SUBID}
	
for wave in ses-*; do
	echo "${wave}"
	cd $wave
	#create nonbids structure
	mkdir -pv "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"
	cd $projectdir/$nonbidsdir/${SUBID}/${wave}
	#mkdir -v facesIM
	mkdir -v facesOB
	mkdir -v structurals
	#copy files over
	#cp "$projectdir"/"$bidsdir"/"${sub}"/"${wave}"/func/*facesIM* "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesIM/
	cp "$projectdir"/"$bidsdir"/${SUBID}/"${wave}"/func/*facesOB* "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"/facesOB/
	cp "$projectdir"/"$bidsdir"/${SUBID}/"${wave}"/anat/*hires* "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"/structurals/
	#convert functional files from 4D to 3D and unzip
	#fslsplit -t "$projectdir"/"$nonbidsdir"/"${sub}"/"${wave}"/facesIM/*
	cd "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"/facesOB/
	fslsplit sub*
	rm "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"/facesOB/sub*
	gunzip vol*
	#gunzip structurals
	cd "$projectdir"/"$nonbidsdir"/${SUBID}/"${wave}"/structurals/
	gunzip sub*
	mv sub* hires.nii
	cd "$projectdir"/"$bidsdir"/${SUBID}/
done

echo "done"




