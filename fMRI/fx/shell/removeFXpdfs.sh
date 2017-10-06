#This script was created to remove erroneous FX PDF files from the FX folder
#
#NV, 10/06/2017

subjectsFolder='/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions'
pdfFolder='/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions/results_pdfs'

cd $subjectsFolder

for a in sub-L*
do
	cd $a
	for b in ses*
	do
		if [ -d $b ]
			then
			cd $b/
			echo $a/$b
			rm *pdf
			cd $subjectsFolder/$a
		else 
			echo $a/$b not found
		fi
	done
	cd $subjectsFolder
done
