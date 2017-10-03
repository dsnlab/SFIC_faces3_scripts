#!/bin/bash
#Created by NV 09/20/2017

#Moves all FX cons from subject directories to a single directory (labelled with subid, wave and con number)
#Execute on CAS

#set paths
projectdir="/Volumes/psych-cog/dsnlab/SFIC"
fxmodelsdir="nonbids_data/fMRI/analysis/fx/models"
AFNIfxdir="nonbids_data/fMRI/analysis/rx/AFNI/FX_models"

model="all_emotions"

cd "$projectdir"/"$fxmodelsdir"/"$model"

#for each subject
for sub in sub*; do
	echo "${sub}"
	cd $sub

	#for each wave
	for wave in ses-*; do
		echo "${wave}"
		cd $wave

		for con in con_0006*; do
			fname="$sub"_"$wave"_"$con"
			cp $con "$projectdir"/"$AFNIfxdir"/"$fname"
		done

		cd ../

	done

	cd ../
	
done