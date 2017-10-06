#This script was created to move the FX PDF files from the FX folder 
#into a folder called results_pdfs.
#
#NV 10/06/2017

subjectsFolder='/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions'
pdfFolder='/Volumes/psych-cog/dsnlab/SFIC/nonbids_data/fMRI/analysis/fx/models/all_emotions/results_pdfs'


# copy PDFs from FX directory to results_PDFs directory
cd $subjectsFolder

for a in sub-*
do
	cd $a
	for b in ses*
	do
		if [ -d $b ]
			then
			cd $b
			echo $a/$b
			for i in *pdf
			do 
				mv $i $pdfFolder/${a}_${b}_${i}
			done
			cd $subjectsFolder/$a
		else 
			echo $a/$b not found
		fi
	done
	cd $subjectsFolder
done
