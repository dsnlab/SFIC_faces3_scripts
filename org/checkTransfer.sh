#!/bin/bash
#Created by NV 07/31/2017

projectdir="/Volumes/psych-cog/dsnlab/SFIC"
mridir="MRI_toBeSorted"

#create log
log="$projectdir"/"scripts/org/check_transfer.csv"
touch "${log}"

#run conversion
cd "$projectdir"/"$mridir"
for sub in L*; do
	subid="$(echo "${sub}" | awk '{print substr($0,0,4)}')"
	echo "${subid}"
	cd "$sub"

	for wave in T*; do
		echo "${wave}"
		cd "${wave}"

		for mri in *; do
			echo "${mri}"
			cd "$mri"
			num="$(ls -1q *R1* | wc -l)"
			echo "${subid},${wave},${mri},${num}" >> $log
			cd ../
		done
		cd ../
	
	done
	cd ../

done
