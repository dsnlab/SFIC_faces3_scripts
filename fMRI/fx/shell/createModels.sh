#!/bin/bash
#Created by NV 08/15/2017
#Copies template multicond files to subject-specific files

modeldir="/Volumes/psych-cog/dsnlab/SFIC/SFIC_faces3_scripts/fMRI/fx/multiconds/"
templatedir="orderTemplates"
subjectdir="subjectSpecific"

one="sub-L007
sub-L020
sub-L018
sub-L008
sub-L017
sub-L016
sub-L011
sub-L001
sub-L009
sub-L090
sub-L005
sub-L034
sub-L080
sub-L002
sub-L003
sub-L006
sub-L010
sub-L014
sub-L015
sub-L056
sub-L091"

for sub in $one

do
	echo "$sub"
	cd "$modeldir"/"$subjectdir"
	cp "$modeldir"/"$templatedir"/one.mat "$modeldir"/"$subjectdir"/"${sub}".mat
	echo ---

done

two="sub-L033
sub-L070
sub-L046
sub-L029
sub-L060
sub-L065
sub-L030
sub-L081
sub-L023
sub-L049
sub-L025
sub-L026
sub-L031
sub-L047
sub-L052
sub-L053
sub-L093
sub-L095
sub-L097"

for sub in $two

do
	echo "$sub"
	cd "$modeldir"/"$subjectdir"
	cp "$modeldir"/"$templatedir"/two.mat "$modeldir"/"$subjectdir"/"${sub}".mat
	echo ---

done

three="sub-L022
sub-L073
sub-L072
sub-L086
sub-L055
sub-L071
sub-L038
sub-L094
sub-L035
sub-L051
sub-L028
sub-L074
sub-L004
sub-L036
sub-L048
sub-L062
sub-L068"

for sub in $three

do
	echo "$sub"
	cd "$modeldir"/"$subjectdir"
	cp "$modeldir"/"$templatedir"/three.mat "$modeldir"/"$subjectdir"/"${sub}".mat
	echo ---

done

four="sub-L084
sub-L054
sub-L087
sub-L057
sub-L019
sub-L041
sub-L076
sub-L024
sub-L083
sub-L037
sub-L039
sub-L044
sub-L061
sub-L063
sub-L079
sub-L085"

for sub in $four

do
	echo "$sub"
	cd "$modeldir"/"$subjectdir"
	cp "$modeldir"/"$templatedir"/four.mat "$modeldir"/"$subjectdir"/"${sub}".mat
	echo ---

done

five="sub-L032
sub-L092
sub-L064
sub-L058
sub-L042
sub-L078
sub-L096
sub-L040
sub-L088
sub-L082
sub-L059
sub-L045
sub-L089
sub-L027
sub-L067
sub-L075
sub-L077"

for sub in $five

do
	echo "$sub"
	cd "$modeldir"/"$subjectdir"
	cp "$modeldir"/"$templatedir"/five.mat "$modeldir"/"$subjectdir"/"${sub}".mat
	echo ---

done