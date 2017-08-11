# This script allows for the removal of unnecessary ppc files from HPC.
#
# By NV, 8/11/2017
###########################################
# Set directory
SOURCE_DIR=/projects/dsnlab/SFIC_Faces3/fMRI/subjects

# Set lists
SUBJECT_LIST=`cat subject_list.txt`
SESS_LIST=`cat sess_list.txt`

# Remove files from HPC
for SUB in $SUBJECT_LIST
do
	echo "Removing files for $SUB"
	for SESS in $SESS_LIST
	do
		echo "Removing unnecessary ppc files from $SESS"
		rm -f $SOURCE_DIR/$SUB/${SESS}/structurals/b*
		rm -f $SOURCE_DIR/$SUB/${SESS}/structurals/o*
		rm -f $SOURCE_DIR/$SUB/${SESS}/structurals/w*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/b*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/o*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/s6wo*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/wo*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/rp*
		#rm -f $SOURCE_DIR/$SUB/${SESS}/facesOB/m*
	done
	echo "Files removed for $SUB"
	echo "----------------------"
done
