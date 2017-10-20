#!/bin/bash
#Created by NV 09/20/2017

#Moves all FX cons from subject directories to a single directory (labelled with subid, wave and con number)
#Execute on CAS

#set paths
projectdir="/projects/dsnlab/SFIC_Faces3"
fxmodelsdir="fMRI/analysis/fx/models"
AFNIfxdir="fMRI/analysis/rx/AFNI_masked/FX_models"

model="all_emotions_masked"

cd "$projectdir"/"$fxmodelsdir"/"$model"

#for each subject
for sub in sub*; do
	echo "${sub}"
	cd $sub

	#for each wave
	for wave in ses-*; do
		echo "${wave}"
		cd $wave

		for con in con**; do
			fname="$sub"_"$wave"_"$con"
			cp $con "$projectdir"/"$AFNIfxdir"/"$fname"
		done

		cd ../

	done

	cd ../
	
done
