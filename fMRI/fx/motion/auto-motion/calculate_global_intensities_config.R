# Inputs (for calculate_global_intensities.R):
# * subjectDir = path to subject directory
# * functionalDir = path from subject's directory to to functional files
# * outputDir = path where study_globalIntensities.csv will be written
# * study = study name
# * subPattern = regular expression for subject IDs
# * prefix = SPM prefix appended to functional images; use "" to ignore
# * runPattern = regular expression for run names; use "" to specify all directories in $functionalDir
# * threshold = voxel intensity value used to truncate the distribution
# * final_output_csv = path and file name for 'study_globalIntensities.csv'
# * parallelize = use TRUE to parallelize, FALSE if not
# * leave_n_free_cores = number of cores to leave free
#------------------------------------------------------
# define variables
# these variables are all you should need to change
# to run the script
#------------------------------------------------------

# paths
#This is where all subject-numbered directories are:
subjectDir = "/projects/dsnlab/SFIC_Faces3/fMRI/subjects/"
#If you want nii files in just a particular subject subdirectory, specifiy that here:
functionalDir = ""
#This is where you want the resulting csv file to be saved:
outputDir = "/projects/dsnlab/SFIC_Faces3/fMRI/analysis/fx/motion/auto-motion-output/" 

# variables
study = "SFIC_Faces3"
subPattern = "^sub-L[0-9]{3}"
prefix = "ob_faces" #would usually be "o", or "ru" 
runPattern = "ses-wave[1-3]"
threshold = 500
final_output_csv = file.path(outputDir,paste0(study,'_globalIntensities.csv'))
parallelize = TRUE
leave_n_free_cores = 0
