#!/bin/bash
#Created by NV 07/31/2017

#Moves SFIC faces and anat MRI data (from UCLA transfer on 07/2017) into BIDS compatible structure
#Converts analyze to nifti images if necessary, and zips all files

#NOTE: ARCHIVED DUPLICATES BEFORE RUNNNING THIS SCRIPT

#set paths
projectdir="/Volumes/psych-cog/dsnlab/SFIC"
mridir="MRI_toBeSorted"
bidsdir="bids_data"

#create log
log="$projectdir"/"SFIC_faces3_scripts/org/output_SFIC_convert.txt"
touch "${log}"

list="L001_628188
L018_928226
L036_752314
L045_427253
L061_136432
L064_534476
L065_326475
L076_525498
L079_333516
L087_756523"

#run conversion
cd "$projectdir"/"$mridir"
for sub in $list; do
#for sub in L*; do	(originally did for all subject folders, but then re-ran with the subject list above)
	subid="$(echo "${sub}" | awk '{print substr($0,0,4)}')"
	echo "${subid}"
	cd "$sub"

	for wave in T*; do
		sessid="${wave}"
		sessnum="$(echo "${sessid}" | sed 's/[^0-9]//g')"
		echo "${wave}"

		#Create bids directory structure
		echo "Creating directory stucture"
		mkdir -pv "$projectdir"/"$bidsdir"/sub-"${subid}"/ses-wave"${sessnum}"
		cd "$projectdir"/"$bidsdir"/sub-"${subid}"/ses-wave"${sessnum}"
		mkdir -v anat
		mkdir -v func
		
		#Copy files, convert to nii.gz if necessary
		cd "$projectdir"/"$mridir"/"$sub"/"${wave}"/
		for mri in *; do
			mri_task="${mri}"
			echo "${mri_task}"
			if [[ "$mri_task" =~ .*(HiRes|hires|Hires|HIRES).* ]]; then 
				cd "$mri_task"
				filename="$projectdir"/"$bidsdir"/sub-"${subid}"/ses-wave"${sessnum}"/anat/sub-"${subid}"_ses-wave"${sessnum}"_hires.nii.gz
				if [ -f *nii.gz ]; then
					cp *nii.gz "${filename}"
				elif [ -f *nii ]; then
					gzip *nii
					cp *nii.gz "${filename}"
					rm *nii.gz
				else
					echo "${subid}: Convert ${mri}" >> $log
					fslchfiletype NIFTI_GZ *HR* hires
					cp *nii.gz "${filename}"
					rm *nii*
				fi
			elif [[ "$mri_task" =~ .*(Imitate|IMITATE|imit).* ]]; then 
				task="facesIM"
				cd "$mri_task"
				filename="$projectdir"/"$bidsdir"/sub-"${subid}"/ses-wave"${sessnum}"/func/sub-"${subid}"_ses-wave"${sessnum}"_task-"${task}"_bold.nii.gz
				if [ -f *nii.gz ]; then
					cp *nii.gz "${filename}"
				elif [ -f *nii ]; then
					gzip *nii
					cp *nii.gz "${filename}"
					rm *nii.gz
				else
					echo "${subid}: Convert ${mri}" >> $log
					for fn in *R1*img ; do  file="$(echo "${fn}" | awk '{print substr($0,9,3)}')"; fslchfiletype NIFTI $fn "$task"_$file; done
					fslmerge -t $task *.nii 
					cp *nii.gz "${filename}"
					rm *nii*
				fi
			elif [[ "$mri_task" =~ .*(Observe|OBSERVE|obs).* ]]; then 
				task="facesOB"
				cd "$mri_task"
				filename="$projectdir"/"$bidsdir"/sub-"${subid}"/ses-wave"${sessnum}"/func/sub-"${subid}"_ses-wave"${sessnum}"_task-"${task}"_bold.nii.gz
				if [ -f *nii.gz ]; then
					cp *nii.gz "${filename}"
				elif [ -f *nii ]; then
					fslmerge -t $task *.nii 
					cp *nii.gz "${filename}"
					rm *nii.gz
				else
					echo "${subid}: Convert ${mri}" >> $log
					for fn in *R1*img ; do file="$(echo "${fn}" | awk '{print substr($0,9,3)}')"; fslchfiletype NIFTI $fn "$task"_$file; done
					fslmerge -t $task *.nii 
					cp *nii.gz "${filename}"
					rm *nii*
				fi
			else
				echo "NO MRIS TO MOVE"
			fi
			cd ../

		done
		cd ../

	done
	cd ../

done





